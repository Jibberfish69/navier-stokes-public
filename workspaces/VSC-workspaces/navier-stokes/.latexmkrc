$pdf_mode = 1;
$out_dir = '.latexmk-out';
$aux_dir = '.latexmk-out';
$out2_dir = '.';

$makeindex = 'makeindex -c %O -o %D %S';

use Cwd qw(abs_path);

my $cache_root = '.cache';
mkdir $cache_root unless -d $cache_root;

my $biber_cache = "$cache_root/biber-par";
mkdir $biber_cache unless -d $biber_cache;

if (-d $biber_cache) {
  my $resolved = abs_path($biber_cache);
  $ENV{'PAR_GLOBAL_TEMP'} = $resolved if defined $resolved;
}
