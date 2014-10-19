package MojoTemplate;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;

  # トップページ
  $r->get('/')->to(controller => 'main', action => 'index' );  
  $r->get('/:page' => [page => qr/\d+/])->to(controller => 'main', action => 'index' );

  # 詳細
  $r->get('/video/:id')->to(controller => 'main', action => 'detail' );

  # ジャンル別
  $r->get('/genre/:genre')->to(controller => 'main', action => 'genre' );
  $r->get('/genre/:genre/:page' => [ page => qr/\d+/ ])->to(controller => 'main', action => 'genre' ); 

  # タグ別
  $r->get('/tag/:tag/')->to(controller => 'main', action => 'tag' );
  $r->get('/tag/:tag/:page' => [ page => qr/\d+/ ])->to(controller => 'main', action => 'genre' );

  $r->get('about')->to('other#about');              # このサイトについて
  $r->get('coutact')->to('other#sitemap');          # お問い合わせ
  $r->get('policy')->to('other#policy');            # サイトポリシー
}

1;
