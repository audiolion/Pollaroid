create table if not exists poll_record
   (id bigint primary key auto_increment,
    poll_id bigint not null,
    option_id bigint, // nullable; voters will have a null option_id, reps will record responses.
    voter_id bigint not null,
    foreign key (poll_id) references poll(id),
    foreign key (option_id) references poll_option(id),
    foreign key (voter_id) references voter(id));