#!/usr/bin/env swift

import AppKit
import Foundation

struct Config {
    var output: String?
    var columns = 5
    var thumbWidth = 420
    var margin = 24
    var gutter = 20
    var labelHeight = 34
    var showLabels = true
    var inputs: [String] = []
}

func fail(_ message: String) -> Never {
    FileHandle.standardError.write(Data((message + "\n").utf8))
    exit(1)
}

func usage() -> Never {
    print("""
    Usage:
      swift problems/navier-stokes/tools/make_contact_sheet.swift --output OUT.png [options] INPUT.png...

    Options:
      --cols N           Number of columns. Default: 5
      --thumb-width N    Thumbnail width in pixels. Default: 420
      --margin N         Outer margin in pixels. Default: 24
      --gutter N         Gap between cells in pixels. Default: 20
      --label-height N   Label strip height in pixels. Default: 34
      --no-labels        Omit filename labels
    """)
    exit(0)
}

func parseArgs(_ args: [String]) -> Config {
    var config = Config()
    var index = 0

    func readValue(after option: String) -> String {
        index += 1
        guard index < args.count else { fail("Missing value for \(option)") }
        return args[index]
    }

    while index < args.count {
        let arg = args[index]
        switch arg {
        case "--help", "-h":
            usage()
        case "--output", "-o":
            config.output = readValue(after: arg)
        case "--cols":
            guard let value = Int(readValue(after: arg)), value > 0 else {
                fail("--cols must be a positive integer")
            }
            config.columns = value
        case "--thumb-width":
            guard let value = Int(readValue(after: arg)), value > 0 else {
                fail("--thumb-width must be a positive integer")
            }
            config.thumbWidth = value
        case "--margin":
            guard let value = Int(readValue(after: arg)), value >= 0 else {
                fail("--margin must be a nonnegative integer")
            }
            config.margin = value
        case "--gutter":
            guard let value = Int(readValue(after: arg)), value >= 0 else {
                fail("--gutter must be a nonnegative integer")
            }
            config.gutter = value
        case "--label-height":
            guard let value = Int(readValue(after: arg)), value >= 0 else {
                fail("--label-height must be a nonnegative integer")
            }
            config.labelHeight = value
        case "--no-labels":
            config.showLabels = false
            config.labelHeight = 0
        default:
            if arg.hasPrefix("-") {
                fail("Unknown option: \(arg)")
            }
            config.inputs.append(arg)
        }
        index += 1
    }

    guard config.output != nil else { fail("Missing --output OUT.png") }
    guard !config.inputs.isEmpty else { fail("Provide at least one input PNG") }
    return config
}

struct PageImage {
    let path: String
    let name: String
    let image: NSImage
    let pixelWidth: Int
    let pixelHeight: Int
}

func loadPage(_ path: String) -> PageImage {
    let url = URL(fileURLWithPath: path)
    guard FileManager.default.fileExists(atPath: path) else {
        fail("Input does not exist: \(path)")
    }
    guard let data = try? Data(contentsOf: url),
          let rep = NSBitmapImageRep(data: data) else {
        fail("Could not read PNG: \(path)")
    }
    let image = NSImage(size: NSSize(width: rep.pixelsWide, height: rep.pixelsHigh))
    image.addRepresentation(rep)
    return PageImage(
        path: path,
        name: url.lastPathComponent,
        image: image,
        pixelWidth: rep.pixelsWide,
        pixelHeight: rep.pixelsHigh
    )
}

let config = parseArgs(Array(CommandLine.arguments.dropFirst()))
let pages = config.inputs.sorted().map(loadPage)
let columns = min(config.columns, pages.count)
let rows = Int(ceil(Double(pages.count) / Double(columns)))
let thumbWidth = CGFloat(config.thumbWidth)
let thumbHeights = pages.map { page in
    thumbWidth * CGFloat(page.pixelHeight) / CGFloat(page.pixelWidth)
}
let imageAreaHeight = ceil(thumbHeights.max() ?? thumbWidth)
let labelHeight = CGFloat(config.showLabels ? config.labelHeight : 0)
let cellWidth = thumbWidth
let cellHeight = imageAreaHeight + labelHeight
let margin = CGFloat(config.margin)
let gutter = CGFloat(config.gutter)
let canvasWidth = margin * 2 + CGFloat(columns) * cellWidth + CGFloat(max(columns - 1, 0)) * gutter
let canvasHeight = margin * 2 + CGFloat(rows) * cellHeight + CGFloat(max(rows - 1, 0)) * gutter
let canvas = NSImage(size: NSSize(width: canvasWidth, height: canvasHeight))

canvas.lockFocus()
NSColor.white.setFill()
NSBezierPath(rect: NSRect(x: 0, y: 0, width: canvasWidth, height: canvasHeight)).fill()

let labelStyle = NSMutableParagraphStyle()
labelStyle.alignment = .center
labelStyle.lineBreakMode = .byTruncatingMiddle
let labelAttributes: [NSAttributedString.Key: Any] = [
    .font: NSFont.monospacedSystemFont(ofSize: 12, weight: .regular),
    .foregroundColor: NSColor.black,
    .paragraphStyle: labelStyle,
]

for (pageIndex, page) in pages.enumerated() {
    let row = pageIndex / columns
    let column = pageIndex % columns
    let cellX = margin + CGFloat(column) * (cellWidth + gutter)
    let cellBottom = canvasHeight - margin - CGFloat(row + 1) * cellHeight - CGFloat(row) * gutter
    let scale = min(cellWidth / CGFloat(page.pixelWidth), imageAreaHeight / CGFloat(page.pixelHeight))
    let drawWidth = CGFloat(page.pixelWidth) * scale
    let drawHeight = CGFloat(page.pixelHeight) * scale
    let drawX = cellX + (cellWidth - drawWidth) / 2
    let drawY = cellBottom + labelHeight + (imageAreaHeight - drawHeight) / 2
    let imageRect = NSRect(x: drawX, y: drawY, width: drawWidth, height: drawHeight)

    page.image.draw(in: imageRect, from: NSRect.zero, operation: .copy, fraction: 1.0)
    NSColor(calibratedWhite: 0.82, alpha: 1.0).setStroke()
    NSBezierPath(rect: imageRect).stroke()

    if config.showLabels {
        let labelRect = NSRect(x: cellX, y: cellBottom + 6, width: cellWidth, height: max(labelHeight - 8, 0))
        page.name.draw(in: labelRect, withAttributes: labelAttributes)
    }
}

canvas.unlockFocus()

guard let tiff = canvas.tiffRepresentation,
      let bitmap = NSBitmapImageRep(data: tiff),
      let pngData = bitmap.representation(using: .png, properties: [:]) else {
    fail("Could not encode contact sheet PNG")
}

let outputPath = config.output!
let outputURL = URL(fileURLWithPath: outputPath)
let outputDir = outputURL.deletingLastPathComponent()
try FileManager.default.createDirectory(at: outputDir, withIntermediateDirectories: true)
do {
    try pngData.write(to: outputURL)
} catch {
    fail("Could not write \(outputPath): \(error)")
}

print("Wrote \(outputPath) from \(pages.count) PNGs")
