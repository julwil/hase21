SELECT
  JSON_EXTRACT(PR,
    '$.state') AS state,
  JSON_EXTRACT(PR,
    '$.title') AS title,
  JSON_EXTRACT(PR,
    '$.body') AS body,
  JSON_EXTRACT(PR,
    '$.created_at') AS created_at,
  JSON_EXTRACT(PR,
    '$.updated_at') AS updated_at,
  JSON_EXTRACT(PR,
    '$.closed_at') AS closed_at,
  JSON_EXTRACT(PR,
    '$.merged_at') AS merged_at,
  JSON_EXTRACT(PR,
    '$.author_association') AS author_association,
  JSON_EXTRACT(PR,
    '$.auto_merge') AS auto_merge,
  JSON_EXTRACT(PR,
    '$.merged') AS merged,
  JSON_EXTRACT(PR,
    '$.comments') AS comments,
  JSON_EXTRACT(PR,
    '$.review_comments') AS review_comments,
  JSON_EXTRACT(PR,
    '$.commits') AS commits,
  JSON_EXTRACT(PR,
    '$.additions') AS additions,
  JSON_EXTRACT(PR,
    '$.deletions') AS deletions,
  JSON_EXTRACT(PR,
    '$.changed_files') AS changed_files,
  JSON_EXTRACT(PR,
    '$.user') AS user
FROM (
  SELECT
    JSON_EXTRACT(payload,
      '$.pull_request') AS PR
  FROM
    `githubarchive.month.2021*`
  WHERE
    type = 'PullRequestEvent' 
    AND _TABLE_SUFFIX BETWEEN '01' AND '06'
);