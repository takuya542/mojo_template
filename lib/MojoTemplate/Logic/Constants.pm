package MojoTemplate::Logic::Constants;

use strict;
use warnings;

use Constant::Exporter (
    EXPORT => +{ # user MojoTemplate::Logic::Constants;で全てインポートされる
        BASE_URL    => 'test.com',
    },
    EXPORT_OK => +{ # user MojoTemplate::Logic::Constants qw/ LIST_NUM /; でインポートされる
        LIST_NUM => 10,
    },
);

1;
