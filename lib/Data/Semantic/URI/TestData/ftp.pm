package Data::Semantic::URI::TestData::ftp;

use strict;
use warnings;
use Test::More;


our $VERSION = '0.01';


no warnings 'qw';    # Possible attempt to put comments in qw() list 

use constant TESTDATA => (
    {
        args => {},
        valid => [ qw(
            ftp://ftp.example.com/**!(),,
            ftp://127.0.0.1
            ftp://127.0.0.1/
            ftp://127.0.0.1:12345/some/file
            ftp://abigail:secret:here@127.0.0.1:21/some/file
            ftp://abigail:secret@127.0.0.1:21/some/file
            ftp://abigail:secret@ftp.example.com:21/some/file
            ftp://abigail@ftp.example.com
            ftp://abigail@ftp.example.com/some/path/somewhere;type=a
            ftp://abigail@ftp.example.com:21/some/file
            ftp://ftp.example.com
            ftp://ftp.example.com/%7Eabigail/
            ftp://ftp.example.com/
            ftp://ftp.example.com/--_$.+++
            ftp://ftp.example.com/.
            ftp://ftp.example.com/;type=I
            ftp://ftp.example.com/some/directory/some/where/
            ftp://ftp.example.com/some/file/some/where
            ftp://ftp.example.com/some/path;type=A
            ftp://ftp.example.com/some/path;type=i
            ftp://ftp.example.com/~abigail/
            ftp://ftp.example.com:21/some/file
            ftp://www.example.com//////////////
            ftp://www.example.com/:@=&=
        ) ],
        invalid  => [ qw(
            FTP://ftp.example.com/
            HTTP://ftp.example.com/
            ftp://ftp.example.com/`
            ftp://ftp.example.com/nope|nope
            ftp://ftp.example.com/some/??
            ftp://ftp.example.com/some/path;type=AI
            ftp://ftp.example.com/some/path;type=Q
            ftp://ftp.example.com/some/path?query/path
            ftp://ftp.example.com/some/path?query1?query2
            ftp://ftp.example.com:21/some/path?query
            ftp://www.example.com/some/file#target
            ftp://www.example.com/some/path;here
            http://ftp.example.com/
        ) ],
    },
    {
        args => { password => 1 },
        valid => [ qw(
            ftp://ftp.example.com/**!(),,
            ftp://127.0.0.1
            ftp://127.0.0.1/
            ftp://127.0.0.1:12345/some/file
            ftp://abigail:secret@127.0.0.1:21/some/file
            ftp://abigail:secret@ftp.example.com:21/some/file
            ftp://abigail@ftp.example.com
            ftp://abigail@ftp.example.com/some/path/somewhere;type=a
            ftp://abigail@ftp.example.com:21/some/file
            ftp://ftp.example.com
            ftp://ftp.example.com/%7Eabigail/
            ftp://ftp.example.com/
            ftp://ftp.example.com/--_$.+++
            ftp://ftp.example.com/.
            ftp://ftp.example.com/;type=I
            ftp://ftp.example.com/some/directory/some/where/
            ftp://ftp.example.com/some/file/some/where
            ftp://ftp.example.com/some/path;type=A
            ftp://ftp.example.com/some/path;type=i
            ftp://ftp.example.com/~abigail/
            ftp://ftp.example.com:21/some/file
            ftp://www.example.com//////////////
            ftp://www.example.com/:@=&=
        ) ],
        invalid  => [ qw(
            FTP://ftp.example.com/
            HTTP://ftp.example.com/
            ftp://abigail:secret:here@127.0.0.1:21/some/file
            ftp://ftp.example.com/`
            ftp://ftp.example.com/nope|nope
            ftp://ftp.example.com/some/??
            ftp://ftp.example.com/some/path;type=AI
            ftp://ftp.example.com/some/path;type=Q
            ftp://ftp.example.com/some/path?query/path
            ftp://ftp.example.com/some/path?query1?query2
            ftp://ftp.example.com:21/some/path?query
            ftp://www.example.com/some/file#target
            ftp://www.example.com/some/path;here
            http://ftp.example.com/
        ) ],
    },
    {
        args => { type => '[AIDaid]' },
        valid => [ qw(
            ftp://ftp.example.com/**!(),,
            ftp://127.0.0.1
            ftp://127.0.0.1/
            ftp://127.0.0.1:12345/some/file
            ftp://abigail:secret:here@127.0.0.1:21/some/file
            ftp://abigail:secret@127.0.0.1:21/some/file
            ftp://abigail:secret@ftp.example.com:21/some/file
            ftp://abigail@ftp.example.com
            ftp://abigail@ftp.example.com/some/path/somewhere;type=a
            ftp://abigail@ftp.example.com:21/some/file
            ftp://ftp.example.com
            ftp://ftp.example.com/%7Eabigail/
            ftp://ftp.example.com/
            ftp://ftp.example.com/--_$.+++
            ftp://ftp.example.com/.
            ftp://ftp.example.com/;type=I
            ftp://ftp.example.com/some/directory/some/where/
            ftp://ftp.example.com/some/file/some/where
            ftp://ftp.example.com/some/path;type=A
            ftp://ftp.example.com/some/path;type=D
            ftp://ftp.example.com/some/path;type=i
            ftp://ftp.example.com/~abigail/
            ftp://ftp.example.com:21/some/file
            ftp://www.example.com//////////////
            ftp://www.example.com/:@=&=
        ) ],
        invalid  => [ qw(
            FTP://ftp.example.com/
            HTTP://ftp.example.com/
            ftp://ftp.example.com/`
            ftp://ftp.example.com/nope|nope
            ftp://ftp.example.com/some/??
            ftp://ftp.example.com/some/path;type=AI
            ftp://ftp.example.com/some/path?query/path
            ftp://ftp.example.com/some/path?query1?query2
            ftp://ftp.example.com:21/some/path?query
            ftp://www.example.com/some/file#target
            ftp://www.example.com/some/path;here
            http://ftp.example.com/
        ) ],
    },
);


1;


__END__


=head1 NAME

Data::Semantic::URI::TestData::ftp - Testdata classes

=head1 SYNOPSIS

None.

=head1 DESCRIPTION

Defines test data for L<Data::Semantic::URI::ftp_TEST>, 
but it is also used in the corresponding value and domain classes,
i.e., L<Class::Value::URI::ftp_TEST> and
L<Data::Domain::URI::ftp_TEST>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticuri> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::URI::TestData::ftp>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-semantic-uri@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut


