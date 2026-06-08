# Navier-Stokes Human Submission PDF Readthrough Criticism Inventory

- PDF: `problems/navier-stokes/submission-bundle/navier-stokes-human-submission.pdf`
- SHA-256: `b71614f36db2dd25d043638fbcb6498e85bee910c557a40e039635ed9c0514ae`
- Pages read from rendered PDF text: 1081
- Render spot checks: pages 1, 14, 38, 39, 40, 1075-1081
- Reader roles used: harsh CMI-level math referee; ordinary graduate-level reader

## Harsh CMI Referee Criticisms
- R1. The paper is not Clay-ready because page 38 names three live mathematical hinges: Pack retention, Part participation, and Field realization/good-scale noncollapse. Those are presented as remaining theorem work inside the main body.
- R2. The proof replaces the original global-smoothness burden with a class-membership grammar. That grammar needs an equivalence theorem showing that every finite Clay breakdown claim is captured by the same-solution terminal packet test and that the pass side gives classical continuation.
- R3. The no-third-branch argument is too close to a definition. It rules out a nonsmooth member by defining membership to include the smooth-side requirements, then calls the failure exit. A referee will ask where the PDE estimates prove those requirements for the original solution.
- R4. The terminal object is assumed too easily. A finite-time breakdown claim does not automatically hand over a well-defined same-solution terminal packet Q with Pack/Part/Field faces. The paper must construct Q or prove that any alleged counterexample has such a terminal witness.
- R5. The failure list is not proved exhaustive. It is built from prior positive attempts and branch families, which is useful research history, but it is not a theorem classifying all possible Navier-Stokes finite-time breakdown mechanisms.
- R6. The periodic branch and whole-space branch are not separated with enough analytic force. The torus atlas story does not prove the R3 exterior-source estimate, and page 38 still leaves the exterior H^s tail/export hinge live.
- R7. Many propositions and theorems are conceptual one-paragraph proofs. They name Pack, Part, Field, membership, readout, or class exit, but they often do not prove estimates, compactness, trace existence, pressure recovery, or continuation criteria.
- R8. Appendix D contains many open, conditional, incomplete, or failed branches. The text tries to classify them as support, but the PDF does not turn that mass into a clean proof chain accepted on its own terms.
- R9. Appendices E-G use count-based obligation rollups. Counts such as 541 support-boundary obligations or 1067 support obligations are not mathematical proof; each material branch needs a precise theorem or must be removed from the Clay-facing artifact.
- R10. The pass branch relies on membership readout to smooth continuation. The reader needs a standard continuation criterion stated and proved from the Pack/Part/Field hypotheses, with exact regularity levels, domains, pressure normalization, and dependence on the original datum.
- R11. The fail branch proves non-membership in the working class, then treats that as consumption of a Clay counterexample. The paper must prove why an outside-class terminal object cannot be the finite breakdown object demanded by the Clay problem, rather than simply being a singular endpoint.
- R12. The manuscript contains authority language such as installed, support, route, readout, diagnostic, and obligation. Those words often stand where a referee expects hypotheses, lemmas, estimates, and standard PDE definitions.

## Plain Reader Criticisms
- P1. The paper is 1081 pages, but the main proof body ends around page 38. A normal reader will see the rest as a huge appendix dump unless the main proof is self-contained and the appendix is clearly optional.
- P2. The abstract is too dense and front-loads the proof machinery. It names Pack, Part, Field, class exit, exterior-source branches, and terminal witnesses before the reader has a simple theorem statement and route.
- P3. The table of contents signals imbalance: Appendix D alone spans about pages 90-1075. That tells the reader the paper has not been distilled into a submission paper.
- P4. The prose still sounds like internal machinery. Terms such as support stack, surface inventory, route, diagnostic, readout, obligation, installed, and bookkeeping appear throughout and make the reader translate instead of follow.
- P5. The banned word "merely" appears 81 times in the extracted PDF text. That violates the stated writing rule and contributes to a scolding/defensive voice.
- P6. Contrast-pivot language remains heavy: "rather than" appears 220 times, "instead of" 28 times, "not only" 11 times, and at least one direct "not ... but" hit appears. The prose still often defines the path by rejecting neighboring paths first.
- P7. Several headings sound like repo or automation artifacts: Dossier Appendices, Page-24 Failure-Record Contract, Expanded CM Branch Obligations, Expanded Forward-Support Obligations, Family proof role. Those are not natural Clay-paper headings.
- P8. The paper frequently tells the reader how to read the paper. A finished submission should let the proof order carry that load.
- P9. The reader cannot reliably tell what is proved, what is historical, what is support, what is conditional, and what is still open without constantly parsing status language.
- P10. The end matter reads repetitive and generated: claim/proof/reader-facing role paragraphs repeat with broad categories and counts instead of concrete mathematical progress.
- P11. The human-facing proof story is not yet Feynman-like. The reader does not get a simple inevitable chain from the Clay problem to the exact terminal object to the exact contradiction.
- P12. The paper is still overbuilt around proof bureaucracy. It needs a normal theorem-proof spine first, with the app/branch history serving that spine only where it helps the reader.

## Page-Range Evidence

| Range | Pages | Count | Theorem | Prop. | Lemma | Def. | Proof | not proved | not discharged | does not close | open | conditional | remaining | missing | support | surface | route | readout | obligation |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| main body | 1-38 | 38 | 27 | 14 | 2 | 9 | 30 | 0 | 0 | 1 | 3 | 0 | 8 | 8 | 63 | 35 | 31 | 70 | 10 |
| appendix A-C | 39-90 | 52 | 83 | 1 | 3 | 0 | 32 | 1 | 0 | 1 | 25 | 21 | 6 | 39 | 60 | 48 | 166 | 48 | 4 |
| appendix D | 91-1074 | 984 | 1827 | 40 | 138 | 54 | 81 | 25 | 17 | 58 | 413 | 449 | 411 | 288 | 406 | 663 | 1906 | 607 | 28 |
| appendix E-G | 1075-1081 | 7 | 0 | 0 | 1 | 0 | 19 | 0 | 0 | 0 | 3 | 0 | 2 | 0 | 142 | 4 | 21 | 51 | 38 |

## Mechanical Language And Completion Markers

| Marker | Total hits | Pages with hits | Page index |
|---|---:|---:|---|
| banned word "merely" | 81 | 72 | 26, 30, 45, 46, 47, 49, 51, 53, 60, 61, 65, 70, 110, 123, 126, 130, 136, 139, 180, 181, 183, 198, 459, 465, 466, 467, 468, 475, 524, 525(2), 527, 537, 544, 547(2), 570, 571, 618, 635, 637, 639, 641, 647, 648, 669, 679, 687, 725, 751(2), 790, 796, 843, 889, 895, 899(2), 903, 905, 908, 910, 912, 936, 941(2), 942, 977, 980, 981, 994, 1001, 1003(3), 1030(2), 1031, 1054, 1069(2) |
| NBB contrast: not ... but | 1 | 1 | 53 |
| contrast pivot: rather than | 220 | 199 | 17, 22(2), 24, 26, 27, 29, 30, 37, 38, 40, 47, 49, 53, 55, 58, 60, 70, 90, 100, 101(2), 105, 109(2), 113, 115, 118, 119, 122, 123, 124, 125, 126, 130(2), 133, 136, 137, 148, 153, 154, 159, 160, 163, 166, 170, 174, 176, 179(2), 182, 184(2), 186(2), 194, 200, 202, 213, 214, 215, 216(2), 222, 235, 250, 261, 264, 270, 277, 278, 303, 317, 325, 334, 351, 353, 357, 360, 364, 368, 372, 397, 398, 399, 402, 403, 424, 425, 439, 449(2), 452, 465, 466, 467(2), 475, 483, 488(2), 492, 493, 495, 497, 498, 499, 503, 506, 514, 515(2), 524, 526, 527, 532, 539(2), 543, 549, 557, 567, 579(2), 584, 597, 598, 617, 624(2), 625, 633, 634, 642 ... +79 more pages |
| contrast pivot: instead of | 28 | 28 | 45, 67, 68, 123, 161, 178, 186, 190, 199, 353, 411, 464, 472, 535, 634, 661, 688, 732, 890, 915, 918, 920, 948, 995, 1015, 1035, 1062, 1080 |
| contrast pivot: not only | 11 | 10 | 123, 127, 462(2), 475, 627, 743, 920, 978, 1003, 1004 |
| open | 398 | 282 | 13, 20, 24, 52, 55(3), 58(3), 70, 72, 74, 75(2), 76, 77(2), 78, 80, 81(2), 82, 83, 87, 88, 100(2), 101, 106, 110, 118, 136, 137(2), 142, 144, 148, 150, 151(2), 154, 162, 163, 172, 177, 179, 193, 198, 199, 216, 217(2), 223, 224, 228, 229(3), 230, 236, 237, 239, 243, 245(7), 246, 247, 248(5), 249, 250, 252(2), 253, 261(3), 264, 267, 268, 270, 272, 273, 276, 278(2), 279, 285, 297(2), 302, 305(2), 306(3), 311(2), 313, 314, 320, 321, 323, 325, 326, 328, 330, 338, 340, 351(2), 352, 353, 354(2), 355, 357(2), 361, 364, 365, 367, 371(3), 373(3), 374(3), 375, 383(2), 384(2), 385, 387, 390, 391, 394, 396, 397(2), 400, 401(2), 402(2), 404, 405(2), 406, 410, 412, 414, 418, 419 ... +162 more pages |
| conditional | 317 | 241 | 44(2), 52(3), 53, 54, 55(2), 57(2), 70, 82, 84, 87, 88(2), 89, 94, 99, 116(3), 118, 124, 130, 141, 178, 182, 196, 210, 213(2), 222, 223, 225(2), 226, 231(2), 235(2), 242, 245, 249, 250, 251(2), 253(2), 254, 255, 260, 261(6), 262, 264, 265, 275(2), 277, 279(2), 280, 282, 283, 284, 288(2), 289, 293(2), 295, 302, 304, 306(2), 307(3), 311, 313, 326, 328(2), 330, 331(2), 334, 335, 340, 341, 345(3), 346(2), 349, 352(2), 354, 357, 359(2), 360(2), 361, 362(2), 363, 367, 368(2), 369, 370, 376, 379, 380, 384(2), 385, 394, 398(2), 401, 402, 403, 405, 407(2), 412(5), 415(2), 416, 417, 418(2), 422, 434, 438, 440, 442, 443, 447(2), 453(2), 456, 471, 475, 477, 482, 496(2), 497, 499(2), 512, 513, 518(2), 520 ... +121 more pages |
| missing | 335 | 266 | 6(3), 10, 14(2), 29, 30, 41(2), 42(2), 44, 45, 46, 47(2), 49, 50(3), 51(2), 52, 54(2), 55, 56, 57, 58, 59, 67, 68, 69, 70, 75, 76(2), 77, 80, 81, 82, 83, 84, 85, 86, 88, 95(2), 96, 99(2), 102, 104, 105, 106, 109, 122, 123, 126(2), 137, 139, 142(4), 143, 145, 148, 154, 158, 164(2), 169, 174(2), 184, 185, 190, 194, 195, 199, 224(2), 226, 237, 239, 245, 251, 253(2), 254, 266, 268(2), 278(2), 279(2), 291, 297, 304, 305(3), 312, 313, 314, 325, 326, 334, 343, 345, 346, 351, 361, 364, 370(2), 371, 376, 379, 380, 381, 384, 389, 399, 402, 404, 405, 407, 408(2), 413, 416, 422, 429(4), 434, 435(3), 440, 448, 453, 458, 471, 475(2), 478, 481 ... +146 more pages |
| not proved | 26 | 26 | 58, 98, 152, 185, 211, 408, 435, 458, 459, 474, 476, 551, 666, 714, 765, 773, 786, 787, 833, 845, 847, 851, 898, 930, 1022, 1027 |
| not discharged | 17 | 17 | 155, 212, 237, 265, 312, 367, 389, 478, 484, 550, 688, 740, 786, 803, 831, 927, 929 |
| does not close | 60 | 59 | 27, 48, 92, 96, 100, 101, 124, 143, 144, 167, 179, 210, 213, 246, 252, 266, 309, 383, 417, 486, 502, 509, 535, 537, 548, 554, 569, 595, 596, 599, 633, 655, 664, 709, 732, 739, 745, 753, 775, 820, 827, 842, 855, 865, 878, 889, 913, 943, 951, 966, 969, 979, 1008, 1033, 1034, 1063(2), 1066, 1068, 1070 |
| still need | 5 | 5 | 215, 517, 570, 965, 1004 |
| blocked | 62 | 42 | 47, 94, 95(2), 106, 115(2), 117, 118(2), 142(3), 163, 181(3), 182(2), 213, 214(3), 227, 305, 321, 380, 381, 408, 413, 429, 577, 640, 647, 654, 657, 672, 743, 746, 827(2), 865, 887, 907, 958, 959, 966(3), 967(2), 986(2), 991(6), 997, 1005, 1040 |
| unpaid | 68 | 53 | 7, 8, 12, 22, 25, 29, 30(2), 32, 39, 40, 41, 47, 48, 53(3), 59(2), 66, 67, 74, 76, 78, 86, 88, 89, 90, 292(2), 486(2), 546, 559, 573(2), 615, 661(4), 687, 764, 765(2), 779, 804, 812, 827(2), 834, 857, 858, 864, 865, 866, 867, 888, 1011(4), 1013, 1037, 1038, 1066, 1067, 1080 |
| support | 528 | 223 | 2, 3(3), 6(2), 7(3), 8, 9, 16, 17(2), 18(3), 19(2), 20(3), 21(4), 22, 24, 26, 27, 29, 30, 32(5), 33(3), 34(13), 37(2), 39(2), 40, 41(2), 42(4), 43(4), 47(2), 48(2), 49, 50(3), 51(4), 52, 53(2), 54, 55(2), 56(6), 57(2), 58, 59(2), 61, 64(2), 68, 69(2), 81, 85(2), 89(4), 92, 93(5), 94(3), 96, 99, 105, 106(2), 107(10), 109(4), 118, 119(2), 126, 134, 145, 158, 161, 166(2), 172(3), 173(3), 174, 185, 187, 195, 196, 197(3), 201, 244, 245(4), 246, 250, 251(2), 262, 268, 269, 281, 283, 292, 303, 324(2), 325, 327(2), 342(3), 351(2), 357, 378, 389, 399, 401, 413, 423(2), 424(3), 450(2), 454(2), 456, 458, 477, 496(2), 499, 502, 506, 507, 510(2), 511(2), 513, 514, 517, 519(4), 541, 543(2), 557(3), 559, 560, 562 ... +103 more pages |
| surface | 575 | 280 | 1(3), 2, 6, 7(5), 8, 16, 21(2), 22(2), 23(2), 27(9), 28, 29, 31, 39, 40, 41(5), 42, 44, 45(4), 47(4), 48(2), 53, 59, 60(2), 67(4), 71, 73, 74(6), 75, 76, 79, 89(3), 90(3), 91(4), 92(2), 95, 99, 100(2), 108(2), 109, 110(14), 111(5), 112(6), 113, 115(8), 116, 118, 119(2), 120, 121(3), 125, 126, 127(2), 128, 129, 130, 131(3), 134, 136, 137(3), 138(3), 139(5), 140(9), 141(2), 146, 152, 153(3), 154(4), 155, 162, 163, 165, 169(5), 170(3), 171, 172, 173(3), 174(5), 175(4), 176(2), 177(5), 178(6), 181(2), 183, 186, 190, 193, 197(2), 199, 212, 213, 215(3), 256, 262(2), 263, 267, 301(2), 305, 309(2), 321(2), 324, 326(3), 329, 337, 346, 348, 351, 359, 362, 367, 395, 397(2), 401, 412(2), 414, 415, 425, 438, 439, 445(3) ... +160 more pages |
| route | 1965 | 798 | 1(3), 4(2), 6(2), 7(3), 14, 17, 18(2), 19(2), 21(2), 23, 27(3), 32, 33, 34, 36, 38(4), 39(2), 40(5), 44(4), 45(3), 46(4), 47(2), 48(3), 49(5), 50(2), 51, 52(2), 53(6), 54(3), 55(5), 57(3), 58(10), 59(7), 60, 62(4), 64(4), 66(3), 67(2), 68(3), 69(2), 70(3), 71, 72, 73(2), 75(2), 76(2), 77, 78(5), 79(3), 80(6), 81(2), 82(2), 83(2), 84(2), 86(2), 87(3), 88(2), 89(2), 90(8), 91, 92(3), 93, 94(3), 95, 96(4), 97(4), 98(3), 99(4), 100, 101(3), 102(3), 103(2), 104(3), 105(6), 106(3), 107, 109(6), 110(6), 111(4), 112(2), 113(5), 114(3), 115(11), 117(5), 119, 120, 123, 124(3), 125, 127(4), 128(2), 129(4), 130(10), 131(3), 133(4), 134(3), 135, 136(2), 137(3), 138(9), 139, 141(3), 142(6), 143(7), 144(2), 145(4), 147, 148(3), 149(4), 150(4), 151(5), 152, 153(2), 154(7), 155(4), 157, 158(8), 159(2), 160(3), 161(2) ... +678 more pages |
| readout | 742 | 342 | 6, 7(3), 8, 12, 13(4), 15(2), 17(3), 18, 19(3), 20(6), 21(3), 25, 26(2), 27(5), 28(3), 29(2), 30, 31(4), 32(3), 33(3), 34(6), 35, 36(5), 37(3), 38(3), 39(2), 40, 41, 43, 48, 49, 50(2), 52(4), 53(2), 54(2), 55(2), 56(3), 57(5), 58(2), 61(5), 64(2), 65(2), 70(3), 75, 81, 87, 89, 90(2), 91(6), 92(2), 93, 94(2), 105(4), 106(8), 107(5), 113, 116, 117(2), 118(7), 125(2), 128(2), 140, 144, 146, 147, 150, 163, 180, 200(3), 201, 212, 213, 217(2), 219(3), 222(3), 234(5), 239, 242(4), 243(4), 245, 249, 250, 257, 262(3), 268, 271(3), 272, 274(3), 275, 278, 279, 281, 282(2), 283, 284, 286(4), 287(3), 289, 291, 299(2), 315(3), 316(5), 324(4), 341(2), 342(6), 343, 344, 345, 346(2), 350(2), 355(3), 360(3), 363, 364, 365(3), 370, 378(2), 381, 382, 387(3) ... +222 more pages |
| obligation | 30 | 16 | 37(5), 190, 220, 281(2), 302, 550, 596, 628, 696, 699, 914, 1023(2), 1075, 1077(2), 1080(6), 1081(3) |
| installed | 1006 | 511 | 16, 17, 38, 43(2), 48(2), 51(2), 52(3), 55(2), 58(2), 67, 68, 76, 78, 84, 85, 86, 87(3), 89, 95, 97, 102, 103, 112, 118, 141(2), 142, 143(4), 144(4), 145(3), 146, 148(2), 149(2), 154(2), 155, 157, 158, 160, 163, 164, 165, 167, 182, 183, 194, 195, 201(2), 203, 204(3), 206, 208, 209(2), 210, 211, 212(2), 213, 217, 225, 226(4), 228(2), 235, 236(2), 237, 244, 245(3), 246(4), 247(3), 248, 249(3), 250(2), 251(3), 252(3), 253, 254(3), 259(2), 261(2), 264, 266(2), 267, 268(2), 273, 274, 278(2), 279(4), 280, 282, 293, 302, 303, 305(2), 306, 307, 312, 321, 323, 325(2), 326(3), 327, 328, 329, 334, 338, 339(2), 340, 346(2), 349, 350, 354(2), 357(2), 358, 366, 367, 369, 372(5), 373, 381, 384(3), 388, 390(2), 391, 392 ... +391 more pages |
| diagnostic | 90 | 66 | 2, 12, 17, 18, 19, 21(3), 23(2), 27, 32, 37, 42, 50, 69, 83, 89, 207, 215, 250(2), 251, 401(2), 404, 456(4), 465, 467, 495(2), 499(2), 503, 504, 509, 512(2), 514, 540, 568, 639, 650(3), 663, 668(2), 718, 719(3), 720(2), 764(2), 767, 774(2), 780, 786, 826, 834, 843, 860, 896(2), 915, 937, 967, 1004(2), 1005, 1006, 1007, 1019(2), 1027, 1039, 1052(2), 1056(2), 1057, 1058, 1068, 1074 |
| bookkeeping | 111 | 91 | 14, 32, 57, 73, 82, 84, 90, 99, 105, 109, 121, 160, 161, 162, 190, 193, 200, 215, 219, 223, 239, 251, 253, 326, 358, 364, 368, 369, 402, 455, 479, 486, 495(2), 496, 498(2), 500(2), 503(3), 511(2), 530, 537(2), 541, 545(2), 554, 589(2), 596, 645, 654, 658, 670(2), 679(3), 693, 718, 720, 728, 729, 731, 739, 758, 767, 768(2), 772, 784, 794(2), 813, 816, 819, 825, 838, 849, 853, 855, 856, 857, 859(2), 860(2), 867(2), 883, 885, 890, 898, 906(2), 909, 937, 950, 954, 1004(2), 1007, 1011, 1040, 1053, 1067(2) |

## Critical Page Notes

### Page 1
The abstract makes the central classification claim before the proof has earned the terminal-object construction, continuation readout, and whole-space export burden.

Evidence: ve- scale field control on one witness record. The first place where the terminal object fails gives the class-exit classification Exit(Q; Owork work NS ) := ¬Member(Q; ONS ). The present manuscript uses that classification to consume the alleged finite terminal witness for the Navier–Stokes problem. On the T3 surface, the transported whole-torus material atlas supplies the terminal object. On the R3 surface, the exterior-source branch is read by the same class-membership test a

### Page 6
The paper changes the Clay problem into a class-membership test. A referee will ask for a theorem proving this test is equivalent to the original smoothness problem, not just a new vocabulary for terminal pictures.

Evidence: pressure, the same viscosity, the same incompressibility law, the same velocity field, and the same terminal witness record? A positive answer puts the object on the pass side of the split. A failed answer gives the exit that the breakdown claim owed us. This reframing holds the problem fixed. A finite-time breakdown claim has to stay attached to the original smooth-data solution. The class-membership question is the test for that attachment. 5 Exhaustive Failure List The support stack behind this paper compresses into the f

### Page 15
The no-third-branch theorem is too definitional. It says membership keeps the branch on the smooth side, then uses that to rule out a nonsmooth member. The missing work is the analytic bridge from membership requirements to classical continuation.

Evidence: participation. To be such a continuation branch, it must retain a positive same-fluid carrier, the same Navier– Stokes law through the velocity tower, and positive-scale coherent field data. Those are exactly the requirements defining membership in OworkNS . Theorem 1 (No third in-class terminal branch). There is no terminal branch that is both an in-class member branch and a finite nonsmooth obstruction branch: Member(Q; Owork NS ) and Q blocks smooth continuation at T∗ <

### Page 16
The terminal-consumption theorem claims the first failed requirement necessarily gives Pack, Part, or Field. That follows from the chosen grammar only after the terminal object has been constructed and the grammar has been proved exhaustive for all finite breakdown claims.

Evidence: ion of a positive Pack carrier, the same pressure-viscosity Part action, and one positive-scale Field record. If all three survive, the branch is the lawful Member(Q; Owork NS ) side of the split. If the alleged finite terminal object is not on that side, the first failed requirement is necessarily ¬PackQ , or ¬PartN,Q after Pack survives, or ∀r > 0 ¬FieldN,r,Q after Pack and Part survive. That first face failure is the witness read by the CM embedding as Exit(Q; Owork NS ). 16 The Clay-Facing CM Completion The class law is organ

### Page 17
The periodic classification result still depends on retained-branch continuation readout. It cannot stand as Clay closure unless the H^s continuation norm is actually proved for the same original solution.

Evidence: the same transported atlas, or it has a first Pack, Part, or Field face failure. The face-failure branch is consumed by the installed terminal witness theorem and embedded as class exit for the same working Navier–Stokes object. The retained branch gives the H s , s > 5/2, continuation norm for the same original solution. The failed branch is outside Member(Q; OworkNS ), so it cannot serve as an in-class finite Clay continuation branch. 17 Forward Families As Support Examples The requirements are now defined. T

### Page 38
The page names three live mathematical hinges and says they are the final Clay-facing burden. That is a direct non-completion marker inside the main body.

Evidence: ailure as loss of every positive Field scale, or prove a stronger good-scale noncollapse theorem. That hinge is the last place where a retained branch can try to look like the same solution while losing the coherent field readout needed for continuation. These three hinges are the live mathematical work. The manuscript, graph, app, and exported paper can expose them and keep them in reader order, but they cannot pay them by naming them. A demand to prove one particular source, reserve, no-pulse, or readout estimate belongs to the forward-positive progra

### Page 39
The appendix introduction says the appendices are verification/history rather than extra gaps, while the preceding page says the live mathematical work remains. The reader receives two incompatible completion signals.

Evidence: verification dossier for the app-aligned track. They preserve failed positive routes, source-field derivations, branch ledgers, and surface provenance because those records show why each survivor must be read by Pack, Part, Field, support, or scope boundary. They are not additional proof gaps after the main theorem. When an appendix sentence says that an older source-control theorem, no-pulse route, critical-norm route, or direct exterior H s estimate did not close, that sentence is historical branch evidence unless the main

### Page 40
The failure-record contract says every route marks the exact stopping point. That is useful history, but it reads as a catalog of failed attempts unless the main proof has already closed the three live hinges.

Evidence: covery returns to tail control. The calculation is plausible because each body is a real mathematical tool: viscous high-frequency damping, the energy identity, compactness of controlled approximations, and derivative recovery on a geometric carrier. The stopping point is circular debt. Each body needs the hard theorem promised by the next body. The residue is the first complete obstruction packet: scale transfer, nonlinear source, exact-object capture, and same-surface derivative drain. Its CM role is architectura

### Page 90
The closure of the failure record says failed positive attempts leave terminal objects to be tested. That still does not prove every finite breakdown claim enters the selected packet test.

Evidence: C.39 Closure Of The Failure Record The failed positive attempts above leave only a small number of mathematical survivors. Every route that tried to prove smoothness either asked for a direct estimate that would close the classical proof, or else exposed a terminal object that has to be tested as the same Navier–Stokes solution. The surviving object

### Page 1075
The expanded CM obligations convert many branch obligations into proof roles by counting and sorting them. A referee will treat this as bookkeeping unless each role is tied back to a proved theorem with hypotheses and a proof.

Evidence: names the terminal mechanism, the CM requirement being tested, and the proof role it plays in the pass-or-exit engine. The full source inventory is kept outside the reader-facing paper. E.1 CM proof role 1: Field-face terminal obligations This proof role accounts for 769 branch obligations with one mathematical CM job. The proof rules represented here are retained field failure after the other faces have been removed (417); direct face failure (352). The tested requirements are Field {N,r,Q} (769). The terminal mechanisms

### Page 1077
The support-boundary role explicitly says 541 obligations have no CM conclusion until a bridge supplies a face. That is an admission that large parts of the appendix are support, not closure.

Evidence: rce recovery or history context (22); Zeno or zero heat time source residue failure routed by the row’s face sort rule (2); participation, no drop, or Part envelope failure routed by the row’s face sort rule (1). Family proof role. Claim. CM proof role 6 has no CM conclusion until it selects a same-fluid terminal packet. Proof. A support branch can strengthen the positive pass side, sharpen a pressure test, or prepare a later terminal witness. It cannot assert Member(Q; Owork work

### Page 1080
The branch-family rollup repeats generic proof-role paragraphs. It tells the reader how cases should route, but it does not show the case-by-case mathematics needed for a Clay submission.

Evidence: good readout supports the member branch; a failed readout, after carrier and participation have survived, identifies the Field face. The obligation is therefore placed where the paper decides between positive-scale readability and field exit. G Expanded Branch-Family Obligations The current-material coverage families are represented by mathematical proof roles rather than file names. Repetition is by branch family, so the visible appendix shows the obligation being carried instead of repeating the same anonymous sentence for every s

## Initial Repair Targets From This Readthrough

- T1. Rewrite the first 10 pages around a clean theorem statement, exact claim, and proof route before any Pack/Part/Field machinery enters.
- T2. Resolve or demote the three live closing hinges on page 38. A Clay-facing paper cannot claim completion while those hinges remain open.
- T3. Replace the class-membership grammar with standard PDE definitions and lemmas, then introduce Pack/Part/Field only after the reader sees why those tests are forced.
- T4. Build a self-contained main proof. The appendix can document branch history, but the main proof must stand without asking the reader to process 1000 pages of records.
- T5. Remove or rewrite all banned/pretentious/helper prose: "merely", most contrast pivots, support stack, surface inventory, installed, proof force, diagnostic, obligation, route, readout, and bookkeeping unless a standard mathematical reason remains.
- T6. Cut or quarantine Appendix D into a separate research dossier until each surviving item either pays a named theorem in the main proof or is explicitly historical.
- T7. Replace count-based obligation rollups with actual theorem statements, exact hypotheses, and proofs, or remove them from the submission PDF.
- T8. State and prove the continuation/readout theorem from the precise Pack/Part/Field hypotheses for the same original solution.
- T9. State and prove the terminal-object construction/exhaustion theorem: every alleged finite Clay breakdown supplies the same kind of terminal witness consumed by the proof.
- T10. Separate the T3 proof and the R3 proof cleanly. The R3 exterior-source/export theorem needs its own completed route or a plainly stated scope boundary.

## Readthrough Status

This inventory read all 1081 pages through extracted rendered text, with visual spot checks at the opening, main-body hinge page, appendix transition, and final obligation rollups. It is a criticism inventory, not a repair pass.
