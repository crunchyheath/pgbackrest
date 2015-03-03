####################################################################################################################################
# EXCEPTION MODULE
####################################################################################################################################
package BackRest::Exception;

use strict;
use warnings FATAL => qw(all);
use Carp qw(confess);

####################################################################################################################################
# Exports
####################################################################################################################################
use Exporter qw(import);
our @EXPORT = qw(ERROR_CHECKSUM ERROR_CONFIG ERROR_PARAM ERROR_POSTMASTER_RUNNING ERROR_RESTORE_PATH_NOT_EMPTY ERROR_PROTOCOL);

####################################################################################################################################
# Exception Codes
####################################################################################################################################
use constant
{
    ERROR_CHECKSUM                     => 100,
    ERROR_CONFIG                       => 101,
    ERROR_PARAM                        => 102,
    ERROR_RESTORE_PATH_NOT_EMPTY       => 103,
    ERROR_POSTMASTER_RUNNING           => 104,
    ERROR_PROTOCOL                     => 105
};

####################################################################################################################################
# CONSTRUCTOR
####################################################################################################################################
sub new
{
    my $class = shift;       # Class name
    my $iCode = shift;       # Error code
    my $strMessage = shift;  # ErrorMessage

    # Create the class hash
    my $self = {};
    bless $self, $class;

    # Initialize exception
    $self->{iCode} = $iCode;
    $self->{strMessage} = $strMessage;

    return $self;
}

####################################################################################################################################
# CODE
####################################################################################################################################
sub code
{
    my $self = shift;

    return $self->{iCode};
}

####################################################################################################################################
# MESSAGE
####################################################################################################################################
sub message
{
    my $self = shift;

    return $self->{strMessage};
}

1;
