TOKEN="add your Gitlab personal access token here"
GROUP_ID="add your group id here"
CI_YML_CONTENT="add your ci yml location here"
BRANCH_NAME="add your branch name here"

# Read the content of .gitlab-ci.yml
CI_YML_CONTENT=$(cat "$CI_YML_PATH")

# Loop through each projects in the group
for PROJECT_ID in $(curl --header "PRIVATE-TOKEN: $TOKEN" "https://gitlab.com/api/v4/groups/$GROUP_ID/projects" | jq -r '.[].id'); do
  curl --request PUT --header "PRIVATE-TOKEN: $TOKEN" --data-urlencode "content@$CI_YML_PATH" "https://gitlab.com/api/v4/projects/$PROJECT_ID/repository/files/.gitlab-ci.yml?branch=$BRANCH_NAME"
done

# check if the ci yml is updated
# debug: check if the project URL is correct
