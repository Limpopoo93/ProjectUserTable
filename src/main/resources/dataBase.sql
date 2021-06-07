-- auto-generated definition
create table m_user
(
    id         bigserial   not null
        constraint m_user_pk
            primary key,
    user_name  varchar(40) not null,
    password   varchar(50) not null,
    email      varchar(50) not null,
    created    date        not null,
    updated    date        not null,
    first_name varchar(50),
    status     varchar(40)
);

alter table m_user
    owner to postgres;

alter table m_user
    owner to postgres;

-- auto-generated definition
create table m_role
(
    id        bigserial   not null
        constraint m_role_pk
            primary key,
    role_name varchar(15) not null,
    created   date        not null,
    updated   date        not null,
    status    varchar(25) not null
);

alter table m_role
    owner to postgres;

-- auto-generated definition
create table m_user_role
(
    id_role bigint not null
        constraint m_user_role_m_role__fk
            references m_role,
    id_user bigint not null
        constraint m_user_role_m_user__fk
            references m_user
);

alter table m_user_role
    owner to postgres;