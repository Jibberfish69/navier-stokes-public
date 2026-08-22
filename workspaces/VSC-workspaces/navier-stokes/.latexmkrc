$pdf_mode = 1;
$out_dir = '.latexmk-out';
$aux_dir = '.latexmk-out';
$out2_dir = '.';

$makeindex = 'makeindex -c %O -o %D %S';

my $source_format_guard = 'ruby tools/check_no_box_formatting.rb';
my $paragraph_spacing_guard = 'ruby tools/check_no_manual_paragraph_spacing.rb';
my $appendix_derivation_guard = 'ruby tools/check_appendix_derivation_references.rb';
my $source_guards = "$source_format_guard && $paragraph_spacing_guard && $appendix_derivation_guard";
$pdflatex = "$source_guards && pdflatex %O %S";
$lualatex = "$source_guards && lualatex %O %S";
$xelatex = "$source_guards && xelatex %O %S";

use Cwd qw(abs_path);

my $cache_root = '.cache';
mkdir $cache_root unless -d $cache_root;

my $biber_cache = "$cache_root/biber-par";
mkdir $biber_cache unless -d $biber_cache;

if (-d $biber_cache) {
  my $resolved = abs_path($biber_cache);
  $ENV{'PAR_GLOBAL_TEMP'} = $resolved if defined $resolved;
}
