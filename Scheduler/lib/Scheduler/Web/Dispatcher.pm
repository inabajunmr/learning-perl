package Scheduler::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

use Time::Piece; # (1)

get '/' => sub {
    my ($c) = @_;
    my $order = $c->req->parameters->{order};
    my $order_by = 'date DESC';
    $order_by = 'date ASC' if defined($c->req->parameters->{order}) && $c->req->parameters->{order} eq 'reverse';

    my @schedules = $c->db->search('schedules', {}, { order_by => $order_by});
    return $c->render('index.tx', { schedules => \@schedules });
};

post '/post' => sub {
    my ($c) = @_;

    $c->db->insert(schedules => { #
        title => $c->req->parameters->{title},          #
        date  => $c->req->parameters->{date},     # (4)
    });                           #

    return $c->redirect('/');
};

get '/schedules/:id/edit' => sub {
    my ($c, $args) = @_;
    my $id = $args->{id};

    my $schedule = $c->db->single('schedules', { id => $id});
    return $c->render('edit.tx', { schedule => $schedule });
};

post '/schedules/:id/edit' => sub {
    my ($c, $args) = @_;
    my $id = $args->{id};

    my $schedule = $c->db->update('schedules', {
        title => $c->req->parameters->{title},
        date  => $c->req->parameters->{date},
    }, { id => $id});

    return $c->redirect('/');
};

post '/schedules/:id/delete' => sub {
    my ($c, $args) = @_;
    my $id = $args->{id};

    $c->db->delete('schedules' => { id => $id });
    return $c->redirect('/');
};

1;
