
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Modules that LESPEA uses on a daily basis',
  'AUTHOR' => 'Adam Lesperance <lespea@gmail.com>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'ExtUtils::MakeMaker' => '6.30',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Task-BeLike-LESPEA',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::LESPEA',
  'PREREQ_PM' => {
    'DBD::CSV' => '0.000000',
    'DBD::ODBC' => '0.000000',
    'DBI' => '0.000000',
    'DateTime::Format::DateParse' => '0.000000',
    'Devel::NYTProf' => '0.000000',
    'Dist::Zilla' => '0.000000',
    'Dist::Zilla::PluginBundle::Author::LESPEA' => '1.003000',
    'Exporter::Easy' => '0.000000',
    'File::HomeDir' => '0.000000',
    'File::ShareDir' => '0.000000',
    'File::Slurp' => '0.000000',
    'Getopt::Long::Descriptive' => '0.000000',
    'HTML::Tree' => '0.000000',
    'HTML::TreeBuilder::XPath' => '0.000000',
    'JSON' => '0.000000',
    'JSON::Any' => '0.000000',
    'JSON::XS' => '0.000000',
    'List::MoreUtils' => '0.000000',
    'Math::Big' => '0.000000',
    'Math::Big::Factors' => '0.000000',
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Install' => '0.000000',
    'Module::Install::AuthorTests' => '0.000000',
    'Module::Install::ExtraTests' => '0.000000',
    'Module::Starter' => '0.000000',
    'Moose' => '0.000000',
    'MooseX::App::Cmd' => '0.000000',
    'MooseX::Method::Signatures' => '0.000000',
    'MooseX::Types::Common' => '0.000000',
    'MooseX::Types::DateTimeX' => '0.000000',
    'MooseX::Types::Structured' => '0.000000',
    'Net::CIDR::Lite' => '0.000000',
    'Net::DNS' => '0.000000',
    'Net::IP' => '0.000000',
    'Net::Netmask' => '0.000000',
    'Net::Ping' => '0.000000',
    'Perl::Critic' => '0.000000',
    'Readonly::XS' => '0.000000',
    'Regexp::Common' => '0.000000',
    'Spreadsheet::ParseExcel' => '0.000000',
    'Spreadsheet::Read' => '0.000000',
    'Spreadsheet::WriteExcel' => '0.000000',
    'Test::Most' => '0.000000',
    'Test::Perl::Critic' => '0.000000',
    'Test::Pod' => '0.000000',
    'Test::Pod::Coverage' => '0.000000',
    'Text::CSV_XS' => '0.000000',
    'Try::Tiny' => '0.000000',
    'YAML' => '0.000000',
    'YAML::Any' => '0.000000',
    'YAML::Syck' => '0.000000',
    'YAML::XS' => '0.000000',
    'autodie' => '0.000000',
    'namespace::autoclean' => '0.000000',
    'utf8' => '0'
  },
  'VERSION' => '2.001000',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



