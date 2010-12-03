use warnings;
use strict;

package Task::BeLike::LESPEA;
BEGIN {
  $Task::BeLike::LESPEA::AUTHORITY = 'cpan:LESPEA';
}
BEGIN {
  $Task::BeLike::LESPEA::VERSION = '1.200000';
}

#ABSTRACT: Modules that LESPEA uses on a daily basis
1;
__END__
=pod

=head1 NAME

Task::BeLike::LESPEA - Modules that LESPEA uses on a daily basis

=head1 VERSION

version 1.200000

=head2 Builders

=head3 L<Module::Starter>

Creates a skeleton of a bare module

=head2 Data Parsing

=head3 L<Spreadsheet::ParseExcel>

Read Microsoft xls files

=head3 L<Spreadsheet::Read>

Write a wide variety of 'spreadsheets'

=head3 L<Spreadsheet::WriteExcel>

Write Microsoft xls files

=head3 L<Text::CSV_XS>

Parse CSV files, no matter how borked up they are

=head2 Database

=head3 L<DBD::CSV>

Treat a CSV like a database

=head3 L<DBD::ODBC>

Use Microsoft ODBC connections

=head3 L<DBI>

Base database handler

=head2 Dates

=head3 L<DateTime::Format::DateParse>

Takes a string and makes a DateTime object out of it

=head2 Development

=head3 L<Devel::NYTProf>

Best profiler available! (by far)

=head2 Dist::Zilla

=head3 L<Dist::Zilla>

Basic module

=head3 L<Dist::Zilla::App::Command::cover>

Test your test coverage with Devel::Cover

=head3 L<Dist::Zilla::Plugin::Authority>

Adds an authority context to the version

=head3 L<Dist::Zilla::Plugin::Bugtracker>

Adds all the CPAN links to perldoc

=head3 L<Dist::Zilla::Plugin::CheckChangeLog>

Make sure the changes file is up-to-date

=head3 L<Dist::Zilla::Plugin::CheckChangesHasContent>

Make sure the changes file actually has content

=head3 L<Dist::Zilla::Plugin::CheckChangesTests>

Make sure you're versioning properly

=head3 L<Dist::Zilla::Plugin::CompileTests>

Ensures that the module(s) compile correctly

=head3 L<Dist::Zilla::Plugin::CriticTests>

Checks your code for current best practices

=head3 L<Dist::Zilla::Plugin::Git>

Used to check/sync with github

=head3 L<Dist::Zilla::Plugin::HasVersionTests>

Make sure the modules have version info

=head3 L<Dist::Zilla::Plugin::Homepage>

Adds the homepage to the distmeta info

=head3 L<Dist::Zilla::Plugin::InstallGuide>

Create an INSTALL file based on which build system you're using

=head3 L<Dist::Zilla::Plugin::KwaliteeTests>

General quality tests

=head3 L<Dist::Zilla::Plugin::MinimumPerl>

Figures out which version of Perl is the minimum version required

=head3 L<Dist::Zilla::Plugin::MinimumVersionTests>

Make sure the code works with provided versions

=head3 L<Dist::Zilla::Plugin::PodWeaver>

Dynamically creates POD documentation

=head3 L<Dist::Zilla::Plugin::PortabilityTests>

Ensures your filenames will work cross-platform

=head3 L<Dist::Zilla::Plugin::Prepender>

Adds a header to all your files (usefull small readme)

=head3 L<Dist::Zilla::Plugin::ReadmeFromPod>

Creates a README file from the POD documentation

=head3 L<Dist::Zilla::Plugin::ReportVersions>

List all the version of modules you're using

=head3 L<Dist::Zilla::Plugin::Repository>

List github repo in perldoc

=head3 L<Dist::Zilla::Plugin::SynopsisTests>

Makes sure the code in your SYNOPSIS passes a syntax check

=head3 L<Dist::Zilla::Plugin::UnusedVarsTests>

Checks your program for any unused variables (probably a bug?)

=head3 L<Perl::MinimumVersion>

Helper module for dzil plugin

=head3 L<Perl::PrereqScanner>

Helper module for dzil plugin

=head3 L<Pod::Coverage::TrustPod>

Helper module for dzil plugin

=head3 L<Pod::Elemental::Transformer::List>

Helper module for dzil plugin

=head3 L<Pod::Weaver>

Helper module for dzil plugin

=head3 L<Pod::Weaver::Section::Support>

Helper module for dzil plugin

=head3 L<Test::CPAN::Meta>

Helper module for dzil plugin

=head2 Error Checking

=head3 L<Try::Tiny>

At least some basic error checking

=head3 L<autodie>

Smart failures in the event a file/dir read/write fails  -  automagic!

=head2 File handling

=head3 L<File::HomeDir>

Makes getting files out of the users' home directory super easy

=head3 L<File::ShareDir>

Auto store/fetch files in the current modules' "private" folder structure once it's installed

=head2 HTML stuff

=head3 L<HTML::Tree>

Build a huge tree out of the HTML Dom

=head3 L<HTML::TreeBuilder::XPath>

Do some xpath lookups for an HTML tree

=head2 Installers

=head3 L<Exporter::Easy>

Makes exporting functions a snap

=head3 L<Module::Build>

Pure perl installer

=head3 L<Module::Install>

Extension of MakeMaker

=head3 L<Module::Install::AuthorTests>

Run author tests

=head3 L<Module::Install::ExtraTests>

Run extra tests

=head2 JSON

=head3 L<JSON>

Basic perl module to parse JSON

=head3 L<JSON::Any>

Auto use the best available JSON module

=head3 L<JSON::XS>

Fast C module to parse JSON

=head2 Math

=head3 L<Math::Big>

Easily compute math with big ints

=head3 L<Math::Big::Factors>

Compute factors of a number

=head2 Moose

=head3 L<Getopt::Long::Descriptive>

Required for MooseX::App::Cmd

=head3 L<Moose>

Base moose module

=head3 L<MooseX::App::Cmd>

Extend your moose object as a script

=head3 L<MooseX::Method::Signatures>

Adds greate paramater varification to methods (with a performance price)

=head3 L<MooseX::Types::Common>

As it sounds, common types for Moose

=head3 L<MooseX::Types::DateTimeX>

Awesome DateTime parser

=head3 L<MooseX::Types::Structured>

Lets you write enforce structured attributes better than base Moose

=head2 Networking

=head3 L<Net::CIDR::Lite>

Great CIDR calculation tool

=head3 L<Net::DNS>

Do some DNS lookups

=head3 L<Net::IP>

Manip IP address

=head3 L<Net::Netmask>

Yet another IP manip tool

=head3 L<Net::Ping>

Simple pinger

=head2 Testing

=head3 L<Perl::Critic>

Follow best practices

=head3 L<Test::Most>

A whole bunch of tests modules

=head3 L<Test::Perl::Critic>

Follow best practices

=head3 L<Test::Pod>

Ensures your POD compiles ok

=head3 L<Test::Pod::Coverage>

Make sure you document all of your functions

=head2 Utils

=head3 L<File::Slurp>

Read in an entire file all at once

=head3 L<List::MoreUtils>

Provides some advanced-ish list utilities

=head3 L<Readonly::XS>

Marks variables readonly... better than constant for some things

=head3 L<Regexp::Common>

A ton of precompiled regular expressions

=head3 L<namespace::autoclean>

Cleans up the namespace of your modules

=head2 YAML

=head3 L<YAML>

Basic perl module to parse YAML

=head3 L<YAML::Any>

Auto use the best available YAML module

=head3 L<YAML::Syck>

Another fast module to parse YAML

=head3 L<YAML::XS>

Fast C module to parse JSON

=head1 AUTHOR

Adam Lesperance <lespea@gmail.com>

=for :stopwords CPAN AnnoCPAN RT CPANTS Kwalitee diff

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

  perldoc Task::BeLike::LESPEA

=head2 Websites

=over 4

=item *

Search CPAN

L<http://search.cpan.org/dist/Task-BeLike-LESPEA>

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

RT: CPAN's Bug Tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Task-BeLike-LESPEA>

=item *

CPANTS Kwalitee

L<http://cpants.perl.org/dist/overview/Task-BeLike-LESPEA>

=item *

CPAN Testers Results

L<http://cpantesters.org/distro/T/Task-BeLike-LESPEA.html>

=item *

CPAN Testers Matrix

L<http://matrix.cpantesters.org/?dist=Task-BeLike-LESPEA>

=item *

Source Code Repository

You can contribute or fork this project via github:

L<http://github.com/lespea/task-belike-lespea>

    git://github.com/lespea/task-belike-lespea.git

=back

=head2 Bugs

Please report any bugs or feature requests to C<bug-task-belike-lespea at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Task-BeLike-LESPEA>.  I will be
notified, and then you'll automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Adam Lesperance.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

