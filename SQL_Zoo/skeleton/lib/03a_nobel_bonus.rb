# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string

require_relative './sqlzoo.rb'

# BONUS PROBLEM: requires sub-queries or joins. Attempt this after completing
# sections 04 and 07.

def physics_no_chemistry
  # In which years was the Physics prize awarded, but no Chemistry prize?
  execute(<<-SQL)
    SELECT
      DISTINCT Physics_Nobels.year
    FROM
    (
      SELECT
        nobels.yr as year, nobels.winner as winner, nobels.subject as subject
      FROM
        nobels
      WHERE
        nobels.subject = 'Physics'
    ) as Physics_Nobels
    WHERE
      Physics_Nobels.year not in (
        SELECT
          yr
        FROM
          nobels
        WHERE
          nobels.subject = 'Chemistry'
          )
  SQL
end
