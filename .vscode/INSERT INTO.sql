INSERT INTO job_applied
            (job_id,
            application_sent_date,
            custom_resume,
            resume_file_name,
            cover_letter_sent,
            cover_letter_file_name,
            status)
VALUES      (101, '2026-03-01', TRUE,  'resume_data_analyst_acme.pdf',        TRUE,  'cover_letter_acme.pdf',        'Interview Scheduled'),

(102, '2026-03-02', TRUE,  'resume_business_analyst_xyz.pdf',     FALSE, NULL,                           'Applied'),

(103, '2026-03-02', FALSE, 'resume_general.pdf',                   TRUE,  'cover_letter_fintech.pdf',     'Rejected'),

(104, '2026-03-03', TRUE,  'resume_sql_specialist.pdf',            TRUE,  'cover_letter_sql_role.pdf',    'Under Review'),

(105, '2026-03-03', FALSE, 'resume_default.pdf',                   FALSE, NULL,                           'Offer Received');


SELECT * from job_applied
