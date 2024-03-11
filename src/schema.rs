// @generated automatically by Diesel CLI.

diesel::table! {
    assignees (id) {
        id -> Integer,
        todo_id -> Integer,
        assignee_id -> Integer,
    }
}

diesel::table! {
    category (id) {
        id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        title -> Text,
        description -> Nullable<Text>,
        color -> Nullable<Text>,
        icon -> Nullable<Text>,
        default_author -> Nullable<Integer>,
        default_assignee -> Nullable<Integer>,
    }
}

diesel::table! {
    context (id) {
        id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        title -> Text,
        description -> Nullable<Text>,
        color -> Nullable<Text>,
        icon -> Nullable<Text>,
        default_author -> Nullable<Integer>,
        default_assignee -> Nullable<Integer>,
    }
}

diesel::table! {
    tag (id) {
        id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        title -> Text,
        description -> Nullable<Text>,
        color -> Nullable<Text>,
        icon -> Nullable<Text>,
    }
}

diesel::table! {
    tags (id) {
        id -> Integer,
        todo_id -> Integer,
        tag_id -> Integer,
    }
}

diesel::table! {
    todo (id) {
        id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        status -> Text,
        context_id -> Nullable<Integer>,
        category_id -> Nullable<Integer>,
        author_id -> Integer,
        title -> Text,
        description -> Nullable<Text>,
        due_date -> Nullable<Timestamp>,
        end_date -> Nullable<Timestamp>,
    }
}

diesel::table! {
    user (id) {
        id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
        login -> Text,
        name -> Text,
        password -> Text,
        avatar -> Text,
    }
}

diesel::joinable!(assignees -> todo (todo_id));
diesel::joinable!(assignees -> user (assignee_id));
diesel::joinable!(tags -> tag (tag_id));
diesel::joinable!(tags -> todo (todo_id));
diesel::joinable!(todo -> category (category_id));
diesel::joinable!(todo -> context (context_id));
diesel::joinable!(todo -> user (author_id));

diesel::allow_tables_to_appear_in_same_query!(
    assignees,
    category,
    context,
    tag,
    tags,
    todo,
    user,
);
