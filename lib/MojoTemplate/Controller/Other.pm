package MojoTemplate::Controller::Other;
use Mojo::Base 'Mojolicious::Controller';


sub about {
  my $self = shift;
  $self->render('other/about');
}

sub policy {
  my $self = shift;
  $self->render('other/policy');
}

sub contact {
  my $self = shift;
  $self->render('other/coutact');
}

1;
