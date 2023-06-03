drop policy "Enable insert for authenticated users only" on "public"."CustomerPlans";

alter table "public"."Subscription" drop constraint "Subscription_pkey";

drop index if exists "public"."Subscription_pkey";

drop table "public"."Subscription";

alter table "public"."CustomerPlans" drop column "email";

alter table "public"."CustomerPlans" drop column "is_deleted";

alter table "public"."CustomerPlans" drop column "phone";

alter table "public"."CustomerPlans" drop column "stripe_id";

alter table "public"."CustomerPlans" add column "plan_id" text;

alter table "public"."users" drop column "phone";


