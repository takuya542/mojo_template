package MojoTemplate::Controller::Main;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper::Names;
use MojoTemplate::Logic::Model;

# This action will render a template
sub index {
  my $self = shift;
  my $page = $self->param('page');

  $self->render('main/index');
}

sub detail {
  my $self = shift;
  my $id   = $self->param('id');

  $self->render('main/detail');
}

sub genre {
  my $self  = shift;
  my $genre = $self->param('genre');
  my $page  = $self->param('page') || undef;

  $self->render('main/genre');
}

sub tag {
  my $self = shift;
  my $tag = $self->param('tag');
  my $page  = $self->param('page') || undef;

  $self->render('main/tag');
}

1;
