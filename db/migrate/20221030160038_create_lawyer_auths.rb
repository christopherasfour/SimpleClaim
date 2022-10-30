class CreateLawyerAuths < ActiveRecord::Migration
    def change
        create_table :lawyerAuth do |t|
            t.string :username
            t.string :password_digest
            t.integer :lawyer_id
        end
    end
end


NameError: uninitialized constant CreateLawyerauths




codio@invitedeliver-kimonolucas:~/workspace/SimpleClaim/db/migrate$ bundle exec rake db:migrate
(in /home/codio/workspace/SimpleClaim)
/var/lib/gems/2.6.0/gems/activesupport-4.2.11/lib/active_support/core_ext/object/duplicable.rb:111: warning: BigDecimal.new is deprecated; use BigDecimal() method instead.
/var/lib/gems/2.6.0/gems/pry-byebug-3.8.0/lib/pry-byebug/control_d_handler.rb:5: warning: control_d_handler's arity of 2 parameters was deprecated (eval_string, pry_instance). Now it gets passed just 1 parameter (pry_instance)
== 20221030160040 AddRequestLawyerToClaims: migrating =========================
-- add_foreign_key(:lawyers, :claims, :requestLawyer, :lawyer_id)
rake aborted!
StandardError: An error has occurred, this and all later migrations canceled:

wrong number of arguments (given 4, expected 2..3)
/var/lib/gems/2.6.0/gems/activerecord-4.2.11/lib/active_record/connection_adapters/abstract/schema_statements.rb:761:in `add_foreign_key'
/var/lib/gems/2.6.0/gems/activerecord-4.2.11/lib/active_record/migration.rb:665:in `block in method_missing'
/var/lib/gems/2.6.0/gems/activerecord-4.2.11/lib/active_record/migration.rb:634:in `block in say_with_time'
/var/lib/gems/2.6.0/gems/activerecord-4.2.11/lib/active_record/migration.rb:634:in `say_with_time'
/var/lib/gems/2.6.0/gems/activerecord-4.2.11/lib/active_record/migration.rb:654:in `method_missing'