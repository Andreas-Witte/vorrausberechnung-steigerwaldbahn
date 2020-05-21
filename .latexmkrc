add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
add_cus_dep('sbl', 'sym', 0, 'run_makeglossaries');

sub run_makeglossaries
{
  if ( $silent )
  {
    system "makeglossaries -q $_[0]";
  }
  else
  {
    system "makeglossaries $_[0]";
  };
}

$latex = 'latex  %O  --shell-escape %S';
$pdflatex = 'lualatex  %O  --shell-escape %S';
