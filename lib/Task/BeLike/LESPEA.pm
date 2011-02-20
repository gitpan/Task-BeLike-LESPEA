use warnings;
use strict;
use utf8;

package Task::BeLike::LESPEA;
BEGIN {
  $Task::BeLike::LESPEA::VERSION = '2.000000';
}
BEGIN {
  $Task::BeLike::LESPEA::AUTHORITY = 'cpan:LESPEA';
}

# ABSTRACT: Modules that LESPEA uses on a daily basis


1;

__END__
=pod

=head1 NAME

Task::BeLike::LESPEA - Modules that LESPEA uses on a daily basis

=head1 VERSION

version 2.000000

=encoding utf8

=head2 Builders

=over 4

=item L<Module::Starter|Module::Starter>

Creates a skeleton of a bare module

=back

=head2 Data Parsing

=over 4

=item L<Spreadsheet::ParseExcel|Spreadsheet::ParseExcel>

Read Microsoft xls files

=item L<Spreadsheet::Read|Spreadsheet::Read>

Write a wide variety of 'spreadsheets'

=item L<Spreadsheet::WriteExcel|Spreadsheet::WriteExcel>

Write Microsoft xls files

=item L<Text::CSV_XS|Text::CSV_XS>

Parse CSV files, no matter how borked up they are

=back

=head2 Database

=over 4

=item L<DBD::CSV|DBD::CSV>

Treat a CSV like a database

=item L<DBD::ODBC|DBD::ODBC>

Use Microsoft ODBC connections

=item L<DBI|DBI>

Base database handler

=back

=head2 Dates

=over 4

=item L<DateTime::Format::DateParse|DateTime::Format::DateParse>

Takes a string and makes a DateTime object out of it

=back

=head2 Development

=over 4

=item L<Devel::NYTProf|Devel::NYTProf>

Best profiler available! (by far)

=back

=head2 Dist::Zilla

=over 4

=item L<Dist::Zilla|Dist::Zilla>

Basic module

=item L<Dist::Zilla::Plugin::Authority|Dist::Zilla::Plugin::Authority>

Adds an authority context to the version

=item L<Dist::Zilla::Plugin::Bugtracker|Dist::Zilla::Plugin::Bugtracker>

Adds all the CPAN links to perldoc

=item L<Dist::Zilla::Plugin::CheckChangeLog|Dist::Zilla::Plugin::CheckChangeLog>

Make sure the changes file is up-to-date

=item L<Dist::Zilla::Plugin::CheckChangesHasContent|Dist::Zilla::Plugin::CheckChangesHasContent>

Make sure the changes file actually has content

=item L<Dist::Zilla::Plugin::CheckChangesTests|Dist::Zilla::Plugin::CheckChangesTests>

Make sure you're versioning properly

=item L<Dist::Zilla::Plugin::CompileTests|Dist::Zilla::Plugin::CompileTests>

Ensures that the module(s) compile correctly

=item L<Dist::Zilla::Plugin::CriticTests|Dist::Zilla::Plugin::CriticTests>

Checks your code for current best practices

=item L<Dist::Zilla::Plugin::HasVersionTests|Dist::Zilla::Plugin::HasVersionTests>

Make sure the modules have version info

=item L<Dist::Zilla::Plugin::Homepage|Dist::Zilla::Plugin::Homepage>

Adds the homepage to the distmeta info

=item L<Dist::Zilla::Plugin::InstallGuide|Dist::Zilla::Plugin::InstallGuide>

Create an INSTALL file based on which build system you're using

=item L<Dist::Zilla::Plugin::KwaliteeTests|Dist::Zilla::Plugin::KwaliteeTests>

General quality tests

=item L<Dist::Zilla::Plugin::MinimumPerl|Dist::Zilla::Plugin::MinimumPerl>

Figures out which version of Perl is the minimum version required

=item L<Dist::Zilla::Plugin::MinimumVersionTests|Dist::Zilla::Plugin::MinimumVersionTests>

Make sure the code works with provided versions

=item L<Dist::Zilla::Plugin::PodWeaver|Dist::Zilla::Plugin::PodWeaver>

Dynamically creates POD documentation

=item L<Dist::Zilla::Plugin::PortabilityTests|Dist::Zilla::Plugin::PortabilityTests>

Ensures your filenames will work cross-platform

=item L<Dist::Zilla::Plugin::Prepender|Dist::Zilla::Plugin::Prepender>

Adds a header to all your files (usefull small readme)

=item L<Dist::Zilla::Plugin::ReadmeFromPod|Dist::Zilla::Plugin::ReadmeFromPod>

Creates a README file from the POD documentation

=item L<Dist::Zilla::Plugin::ReportVersions|Dist::Zilla::Plugin::ReportVersions>

List all the version of modules you're using

=item L<Dist::Zilla::Plugin::Repository|Dist::Zilla::Plugin::Repository>

List github repo in perldoc

=item L<Dist::Zilla::Plugin::SynopsisTests|Dist::Zilla::Plugin::SynopsisTests>

Makes sure the code in your SYNOPSIS passes a syntax check

=item L<Dist::Zilla::Plugin::UnusedVarsTests|Dist::Zilla::Plugin::UnusedVarsTests>

Checks your program for any unused variables (probably a bug?)

=item L<Dist::Zilla::PluginBundle::Author::LESPEA|Dist::Zilla::PluginBundle::Author::LESPEA>

My dzil config

=item L<Perl::MinimumVersion|Perl::MinimumVersion>

Helper module for dzil plugin

=item L<Perl::PrereqScanner|Perl::PrereqScanner>

Helper module for dzil plugin

=item L<Pod::Coverage::TrustPod|Pod::Coverage::TrustPod>

Helper module for dzil plugin

=item L<Pod::Elemental::Transformer::List|Pod::Elemental::Transformer::List>

Helper module for dzil plugin

=item L<Pod::Weaver|Pod::Weaver>

Helper module for dzil plugin

=item L<Pod::Weaver::Section::Support|Pod::Weaver::Section::Support>

Helper module for dzil plugin

=item L<Test::CPAN::Meta|Test::CPAN::Meta>

Helper module for dzil plugin

=back

=head2 Error Checking

=over 4

=item L<Try::Tiny|Try::Tiny>

At least some basic error checking

=item L<autodie|autodie>

Smart failures in the event a file/dir read/write fails  -  automagic!

=back

=head2 File handling

=over 4

=item L<File::HomeDir|File::HomeDir>

Makes getting files out of the users' home directory super easy

=item L<File::ShareDir|File::ShareDir>

Auto store/fetch files in the current modules' "private" folder structure once it's installed

=back

=head2 HTML stuff

=over 4

=item L<HTML::Tree|HTML::Tree>

Build a huge tree out of the HTML Dom

=item L<HTML::TreeBuilder::XPath|HTML::TreeBuilder::XPath>

Do some xpath lookups for an HTML tree

=back

=head2 Installers

=over 4

=item L<Exporter::Easy|Exporter::Easy>

Makes exporting functions a snap

=item L<Module::Build|Module::Build>

Pure perl installer

=item L<Module::Install|Module::Install>

Extension of MakeMaker

=item L<Module::Install::AuthorTests|Module::Install::AuthorTests>

Run author tests

=item L<Module::Install::ExtraTests|Module::Install::ExtraTests>

Run extra tests

=back

=head2 JSON

=over 4

=item L<JSON|JSON>

Basic perl module to parse JSON

=item L<JSON::Any|JSON::Any>

Auto use the best available JSON module

=item L<JSON::XS|JSON::XS>

Fast C module to parse JSON

=back

=head2 Math

=over 4

=item L<Math::Big|Math::Big>

Easily compute math with big ints

=item L<Math::Big::Factors|Math::Big::Factors>

Compute factors of a number

=back

=head2 Moose

=over 4

=item L<Getopt::Long::Descriptive|Getopt::Long::Descriptive>

Required for MooseX::App::Cmd

=item L<Moose|Moose>

Base moose module

=item L<MooseX::App::Cmd|MooseX::App::Cmd>

Extend your moose object as a script

=item L<MooseX::Method::Signatures|MooseX::Method::Signatures>

Adds greate paramater varification to methods (with a performance price)

=item L<MooseX::Types::Common|MooseX::Types::Common>

As it sounds, common types for Moose

=item L<MooseX::Types::DateTimeX|MooseX::Types::DateTimeX>

Awesome DateTime parser

=item L<MooseX::Types::Structured|MooseX::Types::Structured>

Lets you write enforce structured attributes better than base Moose

=back

=head2 Networking

=over 4

=item L<Net::CIDR::Lite|Net::CIDR::Lite>

Great CIDR calculation tool

=item L<Net::DNS|Net::DNS>

Do some DNS lookups

=item L<Net::IP|Net::IP>

Manip IP address

=item L<Net::Netmask|Net::Netmask>

Yet another IP manip tool

=item L<Net::Ping|Net::Ping>

Simple pinger

=back

=head2 Testing

=over 4

=item L<Perl::Critic|Perl::Critic>

Follow best practices

=item L<Test::Most|Test::Most>

A whole bunch of tests modules

=item L<Test::Perl::Critic|Test::Perl::Critic>

Follow best practices

=item L<Test::Pod|Test::Pod>

Ensures your POD compiles ok

=item L<Test::Pod::Coverage|Test::Pod::Coverage>

Make sure you document all of your functions

=back

=head2 Utils

=over 4

=item L<File::Slurp|File::Slurp>

Read in an entire file all at once

=item L<List::MoreUtils|List::MoreUtils>

Provides some advanced-ish list utilities

=item L<Readonly::XS|Readonly::XS>

Marks variables readonly... better than constant for some things

=item L<Regexp::Common|Regexp::Common>

A ton of precompiled regular expressions

=item L<namespace::autoclean|namespace::autoclean>

Cleans up the namespace of your modules

=back

=head2 YAML

=over 4

=item L<YAML|YAML>

Basic perl module to parse YAML

=item L<YAML::Any|YAML::Any>

Auto use the best available YAML module

=item L<YAML::Syck|YAML::Syck>

Another fast module to parse YAML

=item L<YAML::XS|YAML::XS>

Fast C module to parse JSON

=back

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AUTHOR

Adam Lesperance <lespea@gmail.com>

=for :stopwords cpan testmatrix url annocpan anno bugtracker rt cpants kwalitee diff irc mailto metadata placeholders

=head1 SUPPORT

=head2 Perldoc

You can find documentation for this module with the perldoc command.

  perldoc Task::BeLike::LESPEA

=head2 Websites

The following websites have more information about this module, and may be of help to you. As always,
in addition to those websites please use your favorite search engine to discover more resources.

=over 4

=item *

Search CPAN

L<http://search.cpan.org/dist/Task-BeLike-LESPEA>

=item *

RT: CPAN's Bug Tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Task-BeLike-LESPEA>

=item *

AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Task-BeLike-LESPEA>

=item *

CPAN Ratings

L<http://cpanratings.perl.org/d/Task-BeLike-LESPEA>

=item *

CPAN Forum

L<http://cpanforum.com/dist/Task-BeLike-LESPEA>

=item *

CPANTS Kwalitee

L<http://cpants.perl.org/dist/overview/Task-BeLike-LESPEA>

=item *

CPAN Testers Results

L<http://cpantesters.org/distro/T/Task-BeLike-LESPEA.html>

=item *

CPAN Testers Matrix

L<http://matrix.cpantesters.org/?dist=Task-BeLike-LESPEA>

=back

=head2 Bugs / Feature Requests

Please report any bugs or feature requests by email to C<bug-task-belike-lespea at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Task-BeLike-LESPEA>. You will be automatically notified of any
progress on the request by the system.

=head2 Source Code

The code is open to the world, and available for you to hack on. Please feel free to browse it and play
with it, or whatever. If you want to contribute patches, please send me a diff or prod me to pull
from your repository :)

L<https://github.com/lespea/task-belike-lespea>

  git clone git://github.com/lespea/task-belike-lespea.git

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Adam Lesperance.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT
WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER
PARTIES PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
SOFTWARE IS WITH YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE LIABLE
TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE
SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

=cut

