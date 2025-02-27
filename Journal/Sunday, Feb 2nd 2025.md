Make Content Areas 
> within content areas make projects that expose you to those content areas. 
> I want it to feel like a map in warcraft or starcraft that is covered with fog of war. and as you take notes of a content area it gets mapped maybe even having a visual representation and navigation of content areas.
> built on links maybe? tags maybe? makes use of bookmarks maybe (which projects that i'm still building touch these content areas

### Content Area Ideas:




### Projects 

**name**: Home storage/server solution
**purpose**: I need something to hold my no longer manageable size of photos, videos, documents, program code, ect.. and to serve it to all the devices in the house as well as to host running apps that i want to have accessible.
**tasks**:
	> prep big black box pc for taking apart for its parts
			> Interested parts:
					> HDD
					> HDD
					> SDD
					> CD Player
**content areas:** 

#### **Name**: Environment Profiles solution
### **Purpose**: I have projects that need to be version controlled, and publicly available repos, and I want the experience for CI/CD to feel portable. i'm on my mac mini, i'm on my laptop, or i'm replacing devices, those environment variables, secrets, endpoints, images built on different comp archs, and deployed to different comp archs at different stages and phases of dev, such as dev:front-end -> dev:back-end, or dev:front-end -> prod:back-end, and so on. I need a way to reduce the friction of configuring these environments from one project to another, and the manual work that is needed to set up those piplines, maybe making use of a file that pulls from a central location that is up to date with all my hosts, and secrets
### **Tasks**:
- [ ] put all your secrets in the vault
	- [ ] plaid
	- [ ] stripe
	- [ ] tmdb
	- [ ] aws-learning
	- [ ] aws-photo
	- [ ] letterbox-rss
- [ ] determine where the script should go:
#### script
```bash
#!/usr/bin/env bash
# envctl-create.sh (location-independent version)

# Configurable root (set this once)
ENV_PROFILES_DIR="${ENV_PROFILES_DIR:-$HOME/env-profiles}"  # Default location

# Validate environment
if [[ ! -d "$ENV_PROFILES_DIR/vault" ]]; then
  echo "Error: ENV_PROFILES_DIR not configured properly"
  echo "Run: envctl setup /path/to/env-profiles"
  exit 1
fi

PROJECT_NAME=$1
API_KEY=${2:-NEW}

# Create vault entry
VAULT_PATH="$ENV_PROFILES_DIR/vault/shared/${PROJECT_NAME}.enc.yaml"
if [ "$API_KEY" = "NEW" ]; then
  sops --encrypt --age=age16mme3... <(echo "api_key: $(uuidgen)") > "$VAULT_PATH"
else
  echo "api_key: $API_KEY" | sops --encrypt --age=age16mme3... > "$VAULT_PATH"
fi

# Generate stage config
STAGE_FILE="$ENV_PROFILES_DIR/stages/${PROJECT_NAME}-dev.yaml"
cat <<EOF > "$STAGE_FILE"
meta:
  component: api
  stage: dev
secrets:
  \$ref: "../vault/shared/${PROJECT_NAME}.enc.yaml"
EOF

# Update CI/CD
WORKFLOW_FILE="$ENV_PROFILES_DIR/.github/workflows/deploy.yaml"
yq eval -i '.jobs.deploy.strategy.matrix.profile += ["'${PROJECT_NAME}'-dev"]' "$WORKFLOW_FILE"

# Create IDE template in ACTUAL project dir (not env-profiles)
CURRENT_PROJECT_DIR=$(pwd)
mkdir -p "$CURRENT_PROJECT_DIR/.idea"
cat <<EOF > "$CURRENT_PROJECT_DIR/.idea/${PROJECT_NAME}.run.xml"
<component name="ProjectRunConfigurationManager">
  <configuration name="${PROJECT_NAME}" type="BashConfigurationType">
    <env-file path="\${PROJECT_DIR}/.merged-env.yaml"/>
  </configuration>
</component>
EOF

# Symlink bootstrap
ln -sf "$ENV_PROFILES_DIR/bootstrap.sh" "$CURRENT_PROJECT_DIR/bootstrap.sh"

echo "Created project ${PROJECT_NAME}"
echo "Next: cd ${CURRENT_PROJECT_DIR} && ./bootstrap.sh"
```

- [ ] 


### **Content Areas:**



### **name**: Project Terminal
![[Terminal]]