# SCHEDULING JOBS

## at command
The `at` command is a daemon—a background process—useful for scheduling a job to run once at some point in the future.
We use the `at` daemon to schedule the execution of a command or set of commands in the future. The syntax is simply the atcommand followed by the time to execute the


| Time Format     | Meaning                        | 
|-----------------|--------------------------------|
| at 7:20pm	  | Scheduled to run at 7:20 PM on the current day.	 |
| at 7:20pm June 25 | Scheduled to run at 7:20 PM on June 25. |
| at noon | Scheduled to run at noon on the current day.  |
| at noon June 25	  | Scheduled to run at noon on June 25.	 |
| at tomorow | Scheduled to run at tomorrow. |
| at now + 20 minutes | Scheduled to run in 20 minutes from the current time.  |
| at now + 10 hours	  | Scheduled to run in 10 hours from the current time.	 |
| at now + 5 days | Scheduled to run in 5 days from the current time. |
| at now + 3weks | Scheduled to run in 3 weeks from the current time. |
| at 7:20pm 06/25/2019 | Scheduled to run at 7:20 PM on June 25, 2019. |

## crontab
