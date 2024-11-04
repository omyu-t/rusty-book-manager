INSERT INTO
    roles (name)
VALUES
    ('Admin'),
    ('User')
    ON CONFLICT DO NOTHING;

INSERT INTO
    users (name, email, password_hash, role_id)
SELECT
    'TestRust',
    'test.rust@example.com',
    '$2b$12$zcFdTVecm.mpQXG/2r2of.Ix943PoJFM9W4XMm38FGZ0MBqCADA1a',
    role_id
FROM
    roles
WHERE
    name LIKE 'Admin';
