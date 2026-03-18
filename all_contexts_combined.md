# RepoSwarm - All 17 Analysis Area Context Files

---

## 1. High Level Overview (hl_overview)

version=2
## Repository Structure and Files

{repo_structure}
---

Act as a senior software architect tasked with understanding this new project. Analyze the entire workspace.
Please provide a concise summary covering:
0. **Repository Name:** Write the name of the repository or the project name. if you can't find it, or if you are not sure, output: NOT_FAOUND. IMPORTANT: the format of the output should be: [[repository name]]
1.  **Project Purpose:** What problem does this project seem to solve? What is its primary domain?
2. **Architecture Pattern**: The overall architectural pattern or patterns used
3.  **Technology Stack:** Identify the primary programming languages, frameworks, and any major libraries or dependencies suggested by the configuration/package files. **For Python projects specifically**: Examine requirements.txt, pyproject.toml, setup.py, setup.cfg, Pipfile, and poetry.lock files to identify all Python dependencies, their versions, and purposes.

**Note**: When looking for dependencies, package names, or library names, perform case-insensitive matching and consider variations with dashes between words (e.g., "new-relic", "data-dog", "express-rate-limit").
4.  **Initial Structure Impression:** Based on the root directory structure, what seem to be the main high-level parts of this application (e.g., frontend, backend, workers, libraries)?
5. **configuration/package**: identify and list all configuration or package files
6.  **Directory Structure:** Describe the purpose of all the source code directories and how the code appears to be organized (e.g., by feature, by layer).
7.  **High-Level Architecture:** What architectural pattern(s) seem to be employed (e.g., Layered, MVC, Microservices, Event-Driven)? What evidence supports this (e.g., specific directories, framework usage, communication patterns)?
8.  **Build, Execution and Test:** How is the project typically built, run and tested, based on the available scripts and configuration files? Identify the main entry point(s) if possible.

**Special Instruction:** ignore any files under 'arch-docs' folder.

Format the output clearly using markdown

---

## 2. Module Deep Dive (module_deep_dive)

version=1
Based on the previous response, focus specifically on the Detailed Component Breakdown. For each of the components - Analyze its contents and provide details on:
1.  **Core Responsibility:** What is the primary purpose of this module within the application?
2.  **Key Components:** What are the main sub-directories, files, classes, or functions within this module? Briefly describe their roles.
3.  **Dependencies & Interactions:**
    * What other modules or directories within this project (e.g., `@src/models/`, `@src/utils/`, `@src/api/`) does this service/module seem to depend on or interact with (based on imports/calls)?
    * Does it appear to interact with external services or APIs?

**Special Instruction:** ignore any files under 'arch-docs' folder.

Format the output clearly using markdown

{previous_context}

---

## Repository Structure and Files

{repo_structure}

---

## 3. Dependencies (dependencies)

version=4

# Dependency and Architecture Analysis

Act as a software dependency and architecture analyst. Your primary goal is to analyze a given software project to identify its key dependencies and modular components accurately, based solely on the provided data. Avoid making assumptions or including information not explicitly supported by the input.

## Objectives

The purpose of this analysis is to:
- Understand the internal structure and modular composition of the project.
- Identify and document key external dependencies used by the project.


## Instructions

Follow these steps to ensure a thorough and accurate analysis:

1. **Analyze Core Internal Modules/Packages**:
   - Examine the project's directory structure and import statements within the codebase (e.g., directories like `@src/`, `@app/`, `@lib/`, `@pkg/`, or other application-specific folders).
   - Identify and list the main internal modules, packages, or significant sub-components developed as part of this project and reused across different parts of it.
   - For each internal module or package, provide a brief description of its primary responsibility (e.g., "AuthModule: Handles user authentication and authorization" or "DataProcessingService: Core logic for transforming input data").

2. **Special Instruction**:
   - Ignore any files or directories under the `arch-docs` folder to avoid irrelevant or documentation-specific content.

3. **Analyze External Dependencies**:
   - Review the provided list of 3rd-party dependencies extracted from requirements or package files.
   - For each dependency in the list, briefly state its official name (i.e 'temporalio' becomes 'Temporal'), primary role or purpose in the project (e.g., "React: UI framework" or "Axios: HTTP client").
   - **Critical**: Only mention external dependencies that appear in the provided list. Do not assume or include any dependency not explicitly listed.
   - Cite the source of the dependency information (e.g., specific file or configuration).

4. **Formatting**:
   - Use clear markdown formatting for readability.
   - Organize the output into sections with appropriate headings (e.g., "Internal Modules", "External Dependencies").


## Contextual Data

{previous_context}

---

## Repository Structure and Files

{repo_structure}

---

## 3rd-Party Dependencies (Raw List)

**Instruction**: Analyze only the dependencies listed below. Do not include or assume any dependency not present in this list.


-------- LIST START ---------
{repo_deps}
-------- LIST END ---------

---

## 4. Core Entities (core_entities)

version=1
Act as a software architect and analyst. Your task is to identify the common data entities or domain models.
Based on these files:
1.  List the common data entities or structures central to this project's domain.
2.  Describe their key attributes/fields.
3.  Describe any apparent relationships between these entities (e.g., one-to-many, many-to-many).

**Special Instruction:** ignore any files under 'arch-docs' folder.

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 5. Databases (db)

version=1
You are an expert database architect and code analyzer. Your task is to analyze a given codebase (which will be provided to you) and extract detailed documentation for all databases used, including both SQL and NoSQL types.

**Special Instruction:** If, after a comprehensive scan, you determine that the codebase does not interact with any database (SQL or NoSQL), simply return the text: "no database".

**Special Instruction:** ignore any files under 'arch-docs' folder.

For each database identified, please provide the following information in a clear, structured format:

Database Name/Type: The specific name of the database technology (e.g., PostgreSQL, MySQL, MongoDB, Redis, DynamoDB, Cassandra, SQLite).

Purpose/Role: A concise explanation of what kind of data this database stores and its primary role within the system (e.g., "Stores user profiles and authentication data", "Used for caching frequently accessed data", "Persists event streams for analytics").

Key Technologies/Access Methods: Describe how the code interacts with this database. This could include ORMs (e.g., SQLAlchemy, Hibernate, Mongoose), direct SQL queries, specific SDKs (e.g., AWS SDK for DynamoDB), or client libraries.

Key Files/Configuration: Identify the most important files, directories, or configuration settings within the codebase that relate to this database (e.g., database connection strings, schema definitions, migration scripts, ORM models).

Schema/Table Structure (for SQL) / Collection Structure (for NoSQL):

For SQL databases: Provide a high-level overview of the most important tables, their key columns, and primary/foreign keys. You can use a simplified schema representation or a list of tables with their main attributes.

For NoSQL databases: Describe the structure of key collections/documents, including important fields and nested structures.

Key Entities and Relationships: Identify the main entities stored in this database and describe their relationships (e.g., "One-to-many relationship between Users and Orders", "Products are embedded within Order documents").

Interacting Components: List the main components (as identified in a component analysis) that directly interact with this database (e.g., "User Authentication Service", "Product Catalog Module", "Order Processing Service").

Instructions for Analysis:

Comprehensive Scan: Look for all instances of database connections, queries, ORM definitions, data persistence logic, schema definitions, and migration scripts.

Differentiate Types: Clearly distinguish between relational (SQL) and non-relational (NoSQL) databases and their specific types.

Infer Usage: Based on the code, infer the purpose and role of each database if not explicitly documented.

Schema Extraction: Pay close attention to ORM models (e.g., Django models, SQLAlchemy models, Mongoose schemas), raw SQL CREATE TABLE statements, and data insertion/retrieval patterns to infer schema and entity relationships.

Clarity and Detail: Provide clear, concise descriptions, but include enough detail to understand the database's function, how it's accessed, and its data model.

Example Output Format for a single Database:

---
### Database: PostgreSQL

* **Database Name/Type:** PostgreSQL (SQL)
* **Purpose/Role:** Primary transactional database for the application. Stores core business data such as user accounts, product details, orders, and inventory. Ensures data integrity and supports complex queries.
* **Key Technologies/Access Methods:** Python, SQLAlchemy ORM for model definitions and CRUD operations; raw SQL queries for complex reporting.
* **Key Files/Configuration:**
    * `config/database.py` (connection settings)
    * `src/models/` (SQLAlchemy models for User, Product, Order)
    * `migrations/` (Alembic migration scripts)
* **Schema/Table Structure:**
    * `users` table: `id` (PK), `username`, `email`, `password_hash`, `created_at`
    * `products` table: `id` (PK), `name`, `description`, `price`, `stock_quantity`
    * `orders` table: `id` (PK), `user_id` (FK to `users.id`), `order_date`, `total_amount`, `status`
    * `order_items` table: `id` (PK), `order_id` (FK to `orders.id`), `product_id` (FK to `products.id`), `quantity`, `price_at_purchase`
* **Key Entities and Relationships:**
    * **User:** Represents an application user.
    * **Product:** Represents an item available for sale.
    * **Order:** Represents a customer's purchase.
    * **Order Item:** Represents a specific product within an order.
    * **Relationships:** `User` (1) -- `Orders` (M); `Product` (1) -- `Order Items` (M); `Order` (1) -- `Order Items` (M).
* **Interacting Components:**
    * User Authentication Service
    * Product Catalog Module
    * Order Processing Service
    * Reporting Service

---
### Database: Redis

* **Database Name/Type:** Redis (NoSQL - Key-Value Store)
* **Purpose/Role:** Used as an in-memory data store for caching frequently accessed data (e.g., session tokens, product prices), rate limiting, and managing real-time data like leaderboards.
* **Key Technologies/Access Methods:** Node.js, `ioredis` client library.
* **Key Files/Configuration:**
    * `config/redis.js` (connection settings)
    * `src/cache/` (caching utility functions)
    * `src/sessions/` (session store configuration)
* **Schema/Table Structure (for NoSQL):**
    * `sessions:{sessionId}`: Stores user session data (e.g., `userId`, `lastActivity`, `roles`).
    * `cache:product:{productId}`: Stores cached product details (e.g., `name`, `price`, `description`).
    * `rate_limit:{ipAddress}`: Stores counters for API rate limiting.
* **Key Entities and Relationships:**
    * **Session:** Represents an active user session.
    * **Cached Product:** A temporary representation of product data.
    * **Rate Limit Counter:** Tracks API requests per IP.
    * **Relationships:** Primarily key-value lookups; relationships are managed at the application layer rather than within Redis itself.
* **Interacting Components:**
    * User Authentication Service (for session management)
    * Product Catalog Module (for product caching)
    * API Gateway (for rate limiting)
---

Please provide the database analysis for the provided codebase, following the format above for each database.
Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 6. APIs (apis)

version=1
You are an expert API documentation assistant. Your task is to analyze a given codebase (which will be provided to you) and extract detailed documentation for all exposed HTTP API endpoints.

**Special Instruction**: If, after a comprehensive scan, you determine that the codebase does not contain any HTTP API, simply return the text: "no HTTP API".

**Special Instruction:** ignore any files under 'arch-docs' folder.

For each API endpoint identified, please provide the following information in a clear, structured format:

HTTP Method: (e.g., GET, POST, PUT, DELETE, PATCH)

API URL: The full path of the endpoint, including any path parameters (e.g., /users/{id}, /products).

Request Payload:

A JSON schema or an example JSON object representing the expected structure and data types of the request body.

If there is no request body (e.g., for GET or DELETE requests without a body), state "N/A".

Response Payload:

A JSON schema or an example JSON object representing the typical successful response structure and data types.

If the response is simple (e.g., a status message or a single value), provide that.



Short explain of what this API is doing

Instructions for Analysis:

Identify Endpoints: Look for routes, controllers, or handlers that define HTTP endpoints. Consider common frameworks and patterns (e.g., Express.js routes, Spring Boot @RestController, Flask @app.route, etc.).

Infer Payloads: If explicit schemas (like OpenAPI/Swagger definitions) are not present, infer the structure and data types of request and response payloads based on how data is consumed (e.g., req.body usage, deserialization, input validation) and produced (e.g., res.json, return statements, serialization).

Parameters: Clearly indicate path parameters (e.g., {id}) and query parameters (if identifiable and relevant to the endpoint's function).

Clarity: Be as precise as possible. If a field's type or purpose is ambiguous, make a reasonable inference and note any assumptions.

Please provide the documentation for all APIs found in the provided codebase.

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 7. Events (events)

version=1
You are an expert event documentation assistant. Your task is to analyze a given codebase (which will be provided to you) and extract detailed documentation for all events that the code is either consuming or producing.

**Special Instruction**: If, after a comprehensive scan, you determine that the codebase does not contain any events, simply return the text: "no events".

**Special Instruction:** ignore any files under 'arch-docs' folder.

For each event identified, please provide the following information in a clear, structured format:

Event Type: The type of message broker or event system used (e.g., SQS, EventBridge, Kafka, Ably, RabbitMQ, Pub/Sub, custom internal event bus).

Event Name/Topic/Queue: The specific name of the event, topic, queue, stream, or event type identifier.

Direction: Indicate whether the code is Consuming this event or Producing this event.

Event Payload:

A JSON schema or an example JSON object representing the expected structure and data types of the event message body.

If the event has no payload (which is rare but possible), state "N/A".

Short explanation of what this event is doing: Describe the purpose or significance of this event within the system's workflow.

Instructions for Analysis:

Identify Event Interactions: Look for code that interacts with message broker SDKs, client libraries, or framework-specific event mechanisms (e.g., sqs.sendMessage, kafkaProducer.send, eventBridge.putEvents, ably.publish, consumer.on('message'), listener.subscribe).

Infer Payloads: If explicit schemas are not present, infer the structure and data types of event payloads based on how data is serialized before publishing or deserialized after consumption. Pay attention to data transformations.

Clarity: Be as precise as possible. If a field's type or purpose is ambiguous, make a reasonable inference and note any assumptions.

Example Output Format for a single Event:

---
### Event: User Registered

* **Event Type:** EventBridge
* **Event Name/Topic/Queue:** `user.registered`
* **Direction:** Producing
* **Event Payload:**
    ```json
    {
      "userId": "string",
      "email": "string",
      "registrationDate": "date-time"
    }
    ```
* **Short explanation of what this event is doing:** This event is published whenever a new user successfully registers on the platform, signaling other services (e.g., email service, analytics) to take action.

---
### Event: Order Placed Notification

* **Event Type:** SQS
* **Event Name/Topic/Queue:** `order_notifications_queue`
* **Direction:** Consuming
* **Event Payload:**
    ```json
    {
      "orderId": "string",
      "customerId": "string",
      "totalAmount": "number",
      "items": [
        {
          "productId": "string",
          "quantity": "integer"
        }
      ]
    }
    ```
* **Short explanation of what this event is doing:** This service consumes messages from the SQS queue to process new order notifications, typically for fulfillment or inventory updates.
---

Please provide the documentation for all events found in the provided codebase, following the format above for each event.
Format the output clearly using markdown.

---

## Repository Structure and Files

{repo_structure}

---

## 8. Service Dependencies (service_dependencies)

version=4
You are an expert software architect and code analyzer. Your task is to analyze a given codebase (which will be provided to you) and identify all its external dependencies.

Definition of an External Dependency: An "external dependency" in this context refers to any service (internal or external), library, or resource that is not part of the codebase itself but is required for the codebase to function correctly during runtime. These dependencies typically reside outside the immediate project's source code and are often managed via package managers, API calls, or configuration.

Clues to Look For:

1. API Calls: Outgoing HTTP/S requests to external services (e.g., fetch, axios, requests library calls to third-party APIs like payment gateways, mapping services, social media APIs).

2. Event Broker Interactions: Publishing to or consuming from external message queues or event streams (e.g., AWS SQS, Azure Event Hubs, Kafka, Ably, RabbitMQ).

3. Database Connections: Connections to databases that are hosted externally or managed as separate services (e.g., AWS RDS, MongoDB Atlas, Redis Cloud).

4. Cloud Service SDKs: Usage of SDKs for cloud providers (e.g., AWS SDK, Azure SDK, Google Cloud SDK) to interact with their services (S3, Blob Storage, Lambda/Functions, etc.).

5. Package Manager Definitions: Entries in configuration files that list required libraries or modules (e.g., package.json for npm/yarn, requirements.txt for pip, pyproject.toml , pom.xml for Maven, build.gradle for Gradle, Gemfile for Bundler, go.mod for Go modules).

    **For Python projects specifically**: Thoroughly examine requirements.txt, pyproject.toml, setup.py, setup.cfg, Pipfile, poetry.lock, and any other Python dependency files to identify all external Python packages, their versions, and their purposes in the project.

    **Note**: When looking for dependencies, package names, or library names, perform case-insensitive matching and consider variations with dashes between words (e.g., "new-relic", "data-dog", "express-rate-limit").

6. Configuration Files: Environment variables, .env files, or dedicated configuration files that store URLs, API keys, connection strings, or service endpoints pointing to external resources.

7. External File Storage: Interactions with external file storage services (e.g., S3 buckets, Google Cloud Storage, Azure Blob Storage).

8. Authentication/Authorization Services: Integration with external identity providers (e.g., Auth0, Okta, OAuth providers like Google/Facebook login).

9. Monitoring/Logging Tools: Integrations with external monitoring, logging, or analytics platforms (e.g., Datadog, Splunk, Google Analytics).

10. Container Images/Orchestration: References to base images or external services in Dockerfiles, Kubernetes manifests, or similar deployment configurations.

For each external dependency identified, please provide the following information in a clear, structured format:

Dependency Name: A descriptive name for the external dependency (e.g., "Stripe Payment Gateway", "AWS S3", "PostgreSQL Database", "NPM 'lodash' library").

Type of Dependency: Categorize the dependency (e.g., "Third-party API", "Message Broker", "External Service", "Internal Service", "Library/Framework", "Authentication Service", "Monitoring Tool").

Purpose/Role: A concise explanation of why this dependency is used by the codebase and its primary function (e.g., "Processes credit card payments", "Stores static assets", "Manages user data persistence", "Provides utility functions").

Integration Point/Clues: Describe how the codebase integrates with this dependency. Reference specific files, configuration entries, or code patterns that indicate its usage.

Instructions for Analysis:

Thorough Scan: Examine all relevant files, including source code, configuration files, build scripts, and dependency manifests. WHEN READING depdenency files like package.json, DO NOT READ FILE PARTIALLY. ALWAYS READ THEM FULLY.

Distinguish Internal vs. External: Focus strictly on components outside the codebase itself. Internal modules or services within the same repository are not external dependencies for this analysis.

Infer Usage: If explicit documentation is lacking, infer the dependency's purpose and integration points based on code logic and configuration. but MENTION that is is an ASSUMPTION, and requires further investigation.

Clarity and Detail: Provide clear, concise descriptions, but include enough detail to understand the dependency's nature and its interaction with the codebase.

**Special Instruction:** ignore any files under 'arch-docs' folder.

---

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

## Raw Dependencies from requirement.stxt, package.json etc

-----------

{repo_deps}

-----------

---

## 9. Deployment (deployment)

version=2
You are a DevOps architect and deployment specialist. Analyze all deployment processes, CI/CD pipelines, and infrastructure provisioning in this codebase.

**Special Instruction**: If no deployment mechanisms are found, return "no deployment mechanisms detected". Only document deployment mechanisms that are ACTUALLY present in the codebase. Do NOT list deployment tools, platforms, or practices that are not implemented.

## Deployment Pipeline Analysis

### 1. CI/CD Platform Detection

Identify the primary CI/CD platform(s) used:
- **CircleCI** (.circleci/config.yml)
- **GitHub Actions** (.github/workflows/)
- **GitLab CI** (.gitlab-ci.yml)
- **Jenkins** (Jenkinsfile)
- **Azure DevOps** (azure-pipelines.yml)
- **Travis CI** (.travis.yml)
- **Bitbucket Pipelines** (bitbucket-pipelines.yml)
- **AWS CodePipeline** (buildspec.yml)
- **Other** (specify)

### 2. Deployment Stages & Workflow

For EACH deployment pipeline found, document:

#### Pipeline: [Name/File]

**Triggers:**
- Branch patterns (main, develop, release/*)
- Pull request events
- Tag patterns
- Manual triggers
- Scheduled runs
- Webhook triggers

**Stages/Jobs:**
Provide the complete execution flow in order:

1. **Stage Name:** [e.g., Build]
   - **Purpose:** [What this stage accomplishes]
   - **Steps:** [List key steps in order]
   - **Dependencies:** [What must complete before this]
   - **Conditions:** [When this runs/skips]
   - **Artifacts:** [What it produces]
   - **Duration:** [Typical time if available]

2. **Stage Name:** [e.g., Test]
   - [Continue pattern for all stages]

**Quality Gates:**
- Unit test requirements
- Code coverage thresholds
- Security scanning (SAST/DAST)
- Linting and code quality checks
- Performance benchmarks
- Approval requirements
- Rollback conditions

### 3. Deployment Targets & Environments

#### Environment: [Name]

**Target Infrastructure:**
- Platform (AWS, Azure, GCP, Kubernetes, etc.)
- Service type (ECS, Lambda, VM, Container, Serverless)
- Region/Zone
- Scaling configuration

**Deployment Method:**
- Blue-green deployment
- Canary releases
- Rolling updates
- Direct replacement
- Feature flags
- A/B testing

**Configuration:**
- Environment variables
- Secrets management (how/where)
- Configuration files
- Parameter stores
- Service discovery

**Promotion Path:**
- Development -> Staging -> Production
- Branch-based environments
- Manual promotions
- Automated progressions

### 4. Infrastructure as Code (IaC)

#### IaC Tool: [Name]

**Technology:** (Terraform, CloudFormation, Pulumi, CDK, Serverless Framework, etc.)

**Resources Managed:**
- Compute resources
- Network configuration
- Storage systems
- Databases
- Security groups/policies
- Load balancers
- DNS/CDN

**State Management:**
- State storage location
- Locking mechanism
- State encryption
- Backup strategy

**Deployment Process:**
- Plan/preview stage
- Apply/deploy stage
- Validation checks
- Rollback capability

### 5. Build Process

**Build Tools:**
- Build system (Make, Gradle, Maven, npm, yarn, etc.)
- Compilation steps
- Dependency resolution
- Asset optimization
- Bundling/packaging

**Container/Package Creation:**
- Docker image building
- Multi-stage builds
- Base images used
- Image registries
- Package formats (JAR, WAR, ZIP, etc.)
- Versioning strategy

**Build Optimization:**
- Caching strategies
- Parallel execution
- Incremental builds
- Build matrix

### 6. Testing in Deployment Pipeline

**Test Execution Strategy:**

1. **Test Stage Organization:**
   - Which tests run at which stage
   - Parallel vs sequential execution
   - Test environment provisioning
   - Test data setup/teardown

2. **Test Gates & Thresholds:**
   - Minimum coverage requirements
   - Performance benchmarks
   - Security scan thresholds
   - Quality gate configurations
   - Failure handling (fail fast vs continue)

3. **Test Optimization in CI/CD:**
   - Test parallelization
   - Test result caching
   - Selective test execution (affected tests only)
   - Flaky test handling
   - Test execution time limits

4. **Environment-Specific Testing:**
   - Dev environment smoke tests
   - Staging full test suite
   - Production smoke tests
   - Synthetic monitoring post-deployment
   - Canary analysis criteria

### 7. Release Management

**Version Control:**
- Versioning scheme (SemVer, date-based, etc.)
- Git tagging strategy
- Changelog generation
- Release notes

**Artifact Management:**
- Artifact repositories
- Retention policies
- Artifact signing
- Distribution methods

**Release Gates:**
- Manual approvals required
- Automated checks
- Compliance validations
- Business hour restrictions

### 8. Deployment Validation & Rollback

**Post-Deployment Validation:**
- Health check endpoints
- Smoke test suites
- Deployment verification scripts
- Service connectivity tests
- Critical path validation

**Rollback Strategy:**
- Rollback triggers and thresholds
- Automated rollback conditions
- Manual rollback procedures
- Database rollback handling
- State restoration process
- Rollback testing frequency

### 9. Deployment Access Control

**Deployment Permissions:**
- Who can deploy to each environment
- Approval chains and gates
- Emergency deployment procedures
- Break-glass access protocols
- Deployment audit trail

**Secret & Credential Management:**
- How secrets are injected during deployment
- Secret rotation during deployments
- Vault/secret manager integration
- Certificate deployment and renewal
- API key distribution

### 10. Anti-Patterns & Issues

Identify problematic patterns:

**CI/CD Anti-Patterns:**
- Hardcoded secrets or credentials
- Missing test stages
- No rollback mechanism
- Manual steps in automated pipeline
- Insufficient parallelization
- No artifact versioning
- Missing quality gates
- Overly complex pipelines
- Tight coupling between stages
- No environment parity

**IaC Anti-Patterns:**
- Manual infrastructure changes
- State file in version control
- No state locking
- Hardcoded values (should be variables)
- Missing resource tagging
- No module reuse
- Overly permissive IAM policies
- No drift detection

**Deployment Anti-Patterns:**
- No staging environment
- Direct production deployments
- No canary or blue-green strategy
- Missing health checks
- No monitoring/alerting
- Insufficient logging
- No disaster recovery plan
- Missing documentation

### 11. Manual Deployment Procedures

If deployment is NOT through CI/CD:

**Manual Steps Required:**
1. [Step 1 with exact commands]
2. [Step 2 with exact commands]
3. [Continue for all steps]

**Prerequisites:**
- Tools required
- Access needed
- Environment setup
- Credentials/secrets

**Risks:**
- Human error potential
- Inconsistency issues
- Lack of audit trail
- No automated rollback

### 12. Multi-Deployment Scenarios

If multiple deployment methods exist:

**Primary Method:** [Most commonly used]
**Secondary Methods:** [Alternative deployments]

For each method:
- When it's used
- Who can trigger it
- Differences from primary
- Risks and limitations

### 13. Deployment Coordination

**Deployment Order & Dependencies:**
- Service deployment sequence
- Database migration timing
- Feature flag activation order
- Configuration update sequence
- Cache invalidation timing
- CDN cache purging
- DNS propagation considerations

**Cross-Service Coordination:**
- Dependent service notifications
- API version compatibility checks
- Breaking change management
- Coordinated releases
- Rollback dependencies

### 14. Performance & Optimization

**Deployment Metrics:**
- Build time
- Test execution time
- Deployment duration
- Time to production
- Rollback time

**Optimization Opportunities:**
- Parallelization potential
- Caching improvements
- Test optimization
- Build optimization
- Pipeline simplification

### 15. Documentation & Runbooks

**Available Documentation:**
- Deployment guides
- Runbooks
- Troubleshooting guides
- Architecture diagrams
- Emergency procedures

**Missing Documentation:**
- Undocumented procedures
- Tribal knowledge
- Missing runbooks
- Unclear processes

## Output Format

Provide a structured analysis with:

1. **Deployment Overview:**
   - Primary CI/CD platform
   - Deployment frequency
   - Environment count
   - Average deployment time

2. **Deployment Flow Diagram:**
   ```
   [Create a text-based flow diagram showing the complete deployment pipeline]
   ```

3. **Critical Path:**
   - Minimum steps to production
   - Time to deploy hotfix
   - Rollback procedure

4. **Risk Assessment:**
   - Single points of failure
   - Manual intervention points
   - Security vulnerabilities
   - Compliance gaps

5. **Analysis Summary:**
   - Issues identified in current implementation
   - Performance characteristics observed
   - Security issues found
   - Process problems identified

For each finding, provide:
- **Location:** Specific files and line numbers
- **Current State:** What exists now
- **Issues:** Problems identified
- **Impact:** Consequences of issues
- **Fix Needed:** How to address the issue

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## Dependencies

{repo_deps}

---

## 10. Authentication (authentication)

version=1
You are a security architect specializing in authentication. Analyze all authentication mechanisms, identity management, and access control implementations in this codebase.

**Special Instruction**: If no authentication mechanisms are found, return "no authentication mechanisms detected". Only document authentication systems that are ACTUALLY implemented in the codebase. Do NOT list authentication methods, frameworks, or tools that are not present.

## Authentication Methods

1. **Primary Authentication:**
   - Authentication type (JWT, OAuth 2.0, SAML, Basic Auth, API Keys, Session-based)
   - Implementation details
   - Token/session management
   - Multi-factor authentication (MFA/2FA)

2. **Identity Providers:**
   - Local authentication
   - Social login (Google, Facebook, GitHub, Apple)
   - Enterprise SSO (LDAP, Active Directory, Okta)
   - Third-party auth services (Auth0, Firebase Auth, AWS Cognito)

3. **Credentials Management:**
   - Username/password handling
   - Password policies and validation
   - Password hashing algorithms (bcrypt, scrypt, Argon2)
   - Salt generation and storage

## Token Management

1. **Token Generation:**
   - Token creation logic
   - Token signing (algorithms, keys)
   - Token payload structure
   - Token expiration times

2. **Token Storage:**
   - Client-side storage (cookies, localStorage, sessionStorage, keychain)
   - Server-side storage (Redis, database, memory)
   - Secure storage practices
   - Token rotation strategies

3. **Token Validation:**
   - Validation middleware/filters
   - Signature verification
   - Expiration checking
   - Revocation mechanisms

## Session Management

1. **Session Lifecycle:**
   - Session creation
   - Session storage backend
   - Session timeout configuration
   - Session termination

2. **Session Security:**
   - Session ID generation
   - Session fixation prevention
   - Concurrent session handling
   - Session hijacking protection

## Authentication Flow

1. **Login Process:**
   - Login endpoints and handlers
   - Credential validation
   - Success/failure responses
   - Rate limiting and lockout policies

2. **Logout Process:**
   - Logout endpoints
   - Token/session invalidation
   - Cleanup procedures
   - Single sign-out (SSO)

3. **Registration Flow:**
   - User registration endpoints
   - Email/phone verification
   - Account activation
   - Welcome workflows

4. **Password Recovery:**
   - Reset token generation
   - Reset flow implementation
   - Security questions
   - Account recovery options

## Authentication Middleware

1. **Request Authentication:**
   - Authentication filters/guards
   - Header extraction (Authorization, Cookie)
   - Token/session verification
   - Request context enrichment

2. **Route Protection:**
   - Protected route definitions
   - Authentication requirements
   - Redirect logic for unauthenticated users
   - API vs web authentication

## Security Headers & Cookies

1. **Security Headers:**
   - CORS configuration
   - CSP headers
   - X-Frame-Options
   - Strict-Transport-Security

2. **Cookie Security:**
   - HttpOnly flags
   - Secure flags
   - SameSite attributes
   - Cookie encryption

## Biometric & Device Authentication

1. **Biometric Auth:**
   - Fingerprint authentication
   - Face ID/recognition
   - Voice authentication
   - Behavioral biometrics

2. **Device Trust:**
   - Device registration
   - Device fingerprinting
   - Trusted device management
   - Device-based MFA

## API Authentication

1. **API Key Management:**
   - API key generation
   - Key storage and rotation
   - Rate limiting per key
   - Key revocation

2. **Service-to-Service Auth:**
   - mTLS implementation
   - Service accounts
   - Certificate management
   - Inter-service authentication

## OAuth Implementation

1. **OAuth Flows:**
   - Authorization code flow
   - Implicit flow
   - Client credentials flow
   - PKCE implementation

2. **OAuth Configuration:**
   - Client ID/secret management
   - Redirect URI validation
   - Scope definitions
   - Token exchange

## Vulnerabilities & Issues

Identify any authentication vulnerabilities:
- Weak password policies
- Insecure token storage
- Missing rate limiting
- Session fixation risks
- Timing attacks
- Insecure direct object references

For each authentication mechanism found, provide:
- **Location:** Specific files and line numbers
- **Implementation:** How it's implemented
- **Configuration:** Key settings and parameters
- **Security Assessment:** Potential vulnerabilities
- **Issues Identified:** Problems found in current implementation

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 11. Authorization (authorization)

version=1
You are a security architect specializing in authorization. Analyze all authorization mechanisms, access control, and permission systems in this codebase.

**Special Instruction**: If no authorization mechanisms are found, return "no authorization mechanisms detected". Only document authorization systems that are ACTUALLY implemented in the codebase. Do NOT list authorization methods, frameworks, or tools that are not present.

## Authorization Models

1. **Access Control Type:**
   - Role-Based Access Control (RBAC)
   - Attribute-Based Access Control (ABAC)
   - Policy-Based Access Control (PBAC)
   - Access Control Lists (ACL)
   - Capability-based security

2. **Permission Structure:**
   - Permission definitions
   - Permission hierarchies
   - Permission inheritance
   - Dynamic permissions
   - Resource-based permissions

## Roles & Groups

1. **Role Management:**
   - Role definitions
   - Role hierarchies
   - Role assignments
   - Default roles
   - System roles vs custom roles

2. **Group Management:**
   - Group structures
   - Group memberships
   - Group permissions
   - Nested groups
   - Group inheritance

3. **User-Role Mapping:**
   - Assignment mechanisms
   - Multiple roles per user
   - Role activation/deactivation
   - Temporary roles
   - Role delegation

## Permission Checking

1. **Authorization Middleware:**
   - Permission guards/filters
   - Route-level checks
   - Method-level checks
   - Field-level checks
   - Resource ownership validation

2. **Authorization Logic:**
   - Permission evaluation
   - Decision points
   - Voting mechanisms
   - Override capabilities
   - Fallback permissions

3. **Caching Strategy:**
   - Permission caching
   - Cache invalidation
   - Performance optimization
   - Distributed cache

## Resource Access Control

1. **Resource Permissions:**
   - CRUD permissions
   - Custom actions
   - Resource hierarchies
   - Shared resources
   - Public vs private

2. **Ownership Models:**
   - Resource ownership
   - Creator permissions
   - Transfer ownership
   - Shared ownership
   - Delegation

3. **Scope Management:**
   - Access scopes
   - Scope validation
   - Scope inheritance
   - Cross-tenant access
   - API scopes

## Policy Engine

1. **Policy Definition:**
   - Policy language/DSL
   - Policy files/storage
   - Policy versioning
   - Policy compilation
   - Policy distribution

2. **Policy Evaluation:**
   - Evaluation engine
   - Context gathering
   - Decision logging
   - Performance metrics
   - Policy conflicts

## Database Schema

1. **Authorization Tables:**
   - Roles table
   - Permissions table
   - User_roles mapping
   - Role_permissions mapping
   - Resource_permissions

2. **Relationships:**
   - Many-to-many mappings
   - Hierarchical structures
   - Constraints
   - Indexes for performance

## API Authorization

1. **Endpoint Protection:**
   - Required permissions per endpoint
   - HTTP method restrictions
   - Parameter validation
   - Response filtering
   - Rate limiting by role

2. **OAuth Scopes:**
   - Scope definitions
   - Scope requirements
   - Scope validation
   - Consent management
   - Token scopes

## UI/Frontend Authorization

1. **Component Visibility:**
   - Conditional rendering
   - Feature flags
   - Menu filtering
   - Button enabling/disabling
   - Field-level permissions

2. **Route Guards:**
   - Protected routes
   - Role-based routing
   - Permission checks
   - Redirect logic
   - Error pages

## Multi-Tenancy

1. **Tenant Isolation:**
   - Data segregation
   - Permission boundaries
   - Cross-tenant restrictions
   - Tenant admin roles
   - Super admin access

2. **Tenant Permissions:**
   - Tenant-specific roles
   - Tenant resource access
   - Billing permissions
   - Configuration access
   - Audit permissions

## Delegation & Impersonation

1. **Delegation:**
   - Permission delegation
   - Time-limited access
   - Delegation chains
   - Revocation mechanisms
   - Audit trails

2. **Impersonation:**
   - Admin impersonation
   - Support access
   - Audit logging
   - Restrictions
   - Session handling

## Audit & Compliance

1. **Access Logging:**
   - Permission checks logged
   - Access granted/denied
   - Resource access logs
   - Configuration changes
   - Role modifications

2. **Compliance Features:**
   - Segregation of duties
   - Least privilege
   - Need-to-know basis
   - Regular reviews
   - Access certification

## Dynamic Authorization

1. **Context-Based:**
   - Time-based access
   - Location-based
   - Device-based
   - IP restrictions
   - Business rules

2. **Workflow Integration:**
   - Approval workflows
   - Escalation paths
   - Temporary elevations
   - Emergency access
   - Break-glass procedures

## Integration Points

1. **External Systems:**
   - LDAP/AD integration
   - IAM systems
   - Identity providers
   - Policy servers
   - Audit systems

2. **Service Mesh:**
   - Service-to-service auth
   - mTLS authorization
   - Network policies
   - Sidecar proxies
   - Zero trust

## Security Considerations

1. **Vulnerabilities:**
   - Privilege escalation risks
   - Insecure direct object references
   - Missing authorization checks
   - Overly permissive defaults
   - Race conditions

2. **Best Practices:**
   - Principle of least privilege
   - Defense in depth
   - Fail secure
   - Regular audits
   - Permission reviews

For each authorization mechanism, provide:
- **Location:** Specific files and functions
- **Implementation:** How it's enforced
- **Coverage:** What resources are protected
- **Gaps:** Missing authorization checks
- **Security Issues:** Problems found in current implementation

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 12. Data Mapping (data_mapping)

version=1
You are a data privacy and compliance expert tasked with creating a comprehensive data mapping analysis. Analyze how data, especially personal information, flows through this system from collection to storage, processing, and sharing.

**Special Instruction**: Focus on identifying personal data, sensitive information, and compliance-relevant data flows. If no data processing is found, return "no data processing detected". Only document data processing mechanisms that are ACTUALLY implemented in the codebase. Do NOT list data protection tools, compliance frameworks, or privacy technologies that are not present.

## Data Flow Overview

Create a high-level map of data movement through the system:

1. **Data Inputs/Collection Points:**
   - Web forms and user interfaces
   - API endpoints receiving data
   - File uploads and imports
   - Third-party data sources
   - Automated data collection (tracking, analytics)
   - Background jobs fetching data

2. **Internal Processing:**
   - Data transformation and enrichment
   - Validation and cleansing
   - Aggregation and analysis
   - Machine learning/AI processing
   - Caching and temporary storage

3. **Third-Party Processors:**
   - External API calls sending data
   - Cloud service integrations
   - Analytics and monitoring services
   - Payment processors
   - Communication services (email, SMS)
   - CDN and storage providers

4. **Data Outputs/Exports:**
   - API responses
   - Reports and downloads
   - Data synchronization
   - Backups and archives
   - Third-party integrations

## Data Categories

For each data flow identified, document:

### 1. Type of Data/Personal Information

**Personal Identifiers:**
- Names (first, last, full)
- Email addresses
- Phone numbers
- Physical addresses
- IP addresses
- Device identifiers
- User IDs and usernames
- Session identifiers

**Sensitive Categories:**
- Financial data (credit cards, bank accounts, transactions)
- Health information (medical records, conditions, treatments)
- Biometric data (fingerprints, face recognition, voice)
- Government IDs (SSN, passport, driver's license)
- Authentication credentials (passwords, tokens, API keys)
- Location data (GPS, geolocation)
- Children's data (COPPA compliance)

**Business Data:**
- Transaction records
- Customer interactions
- Usage analytics
- Performance metrics
- Audit logs
- Metadata

### 2. Data Activity

For each data processing point, identify:

**Collection Methods:**
- Direct user input
- Automated collection
- Third-party import
- System-generated
- Derived/computed

**Processing Operations:**
- Validation and verification
- Encryption/decryption
- Hashing and tokenization
- Pseudonymization/anonymization
- Aggregation and summarization
- Enrichment and augmentation
- Deduplication
- Format conversion
- Compression

**Data Transformations:**
- Parsing and extraction
- Normalization
- Categorization
- Scoring and ranking
- Machine learning inference

### 3. Purpose of Collection/Processing

Document the business justification for each data activity:

**Primary Purposes:**
- Service delivery (core functionality)
- User authentication and authorization
- Payment processing
- Customer support
- Legal compliance
- Security and fraud prevention
- Performance monitoring

**Secondary Purposes:**
- Analytics and insights
- Marketing and personalization
- Product improvement
- Research and development
- Business intelligence
- Quality assurance

### 4. Data Location & Retention

**Storage Locations:**
- Database systems (specify type and instance)
- File systems (local, network, cloud)
- Cache layers (Redis, Memcached)
- Message queues
- Cloud storage services (S3, Azure Blob, GCS)
- Third-party systems
- Backup locations
- Archive systems

**Retention Policies:**
- Active retention period
- Archive period
- Deletion schedule
- Legal hold requirements
- Regulatory requirements (GDPR, HIPAA, etc.)
- Business requirements
- Technical constraints

## Compliance Considerations

### Privacy Regulations
- **GDPR:** Identify EU personal data processing
- **CCPA/CPRA:** California resident data
- **HIPAA:** Health information handling
- **PCI DSS:** Payment card data
- **COPPA:** Children's data
- **Industry-specific:** Financial (SOX), Education (FERPA)

### Data Subject Rights
- **Access:** How users can view their data
- **Rectification:** Update/correct mechanisms
- **Erasure:** Delete/forget procedures
- **Portability:** Export capabilities
- **Restriction:** Processing limitations
- **Objection:** Opt-out mechanisms

### Cross-Border Transfers
- International data flows
- Data localization requirements
- Transfer mechanisms (SCCs, adequacy decisions)
- Third-party processor locations

## Security Controls

### Data Protection
- Encryption at rest
- Encryption in transit
- Access controls
- Audit logging
- Data masking/redaction
- Secure deletion

### Data Breach Risks
- Vulnerable data exposure points
- Unencrypted transmissions
- Inadequate access controls
- Missing audit trails
- Third-party risks

## Third-Party Data Sharing

### Data Processors
For each third-party processor:
- **Name/Service:** Identity of processor
- **Data Shared:** Types of data sent
- **Purpose:** Why data is shared
- **Location:** Geographic location
- **Security:** Contractual safeguards
- **Retention:** How long they keep data

### Data Controllers
- Joint controller relationships
- Independent controller transfers
- Consent requirements
- Legal basis for sharing

## Data Inventory Summary

Provide a structured inventory:

| Data Type | Collection Point | Processing | Storage | Retention | Sensitivity | Compliance |
|-----------|-----------------|-----------|---------|-----------|-------------|------------|
| [Example] | [Where collected] | [How processed] | [Where stored] | [How long] | [Level] | [Requirements] |

## Risk Assessment

### High-Risk Processing
- Large-scale personal data processing
- Sensitive data categories
- Systematic monitoring
- Automated decision-making
- Children's data
- Cross-border transfers

### Vulnerabilities
- Unencrypted data storage
- Excessive data collection
- Missing consent mechanisms
- Inadequate retention policies
- Third-party dependencies
- Access control gaps

## Current State Analysis

### Critical Issues Found
- Compliance gaps identified in implementation
- Security vulnerabilities discovered
- Documentation issues found
- Consent implementation problems

### Implementation Issues Identified
- Privacy implementation weaknesses
- Data handling problems found
- Security implementation gaps
- Process automation issues
- Documentation problems identified

## Code-Level Findings

For each significant data flow, provide:
- **File Location:** Specific files handling the data
- **Functions/Classes:** Code components involved
- **Data Fields:** Exact field names and types
- **Transformations:** Specific operations performed
- **Validation:** Input validation and sanitization
- **Error Handling:** How failures are managed

Format the output clearly using markdown, creating a comprehensive data map that can be used for compliance, security reviews, and operational understanding.

---

## Repository Structure and Files

{repo_structure}

---

## 13. Security Check (security_check)

version=2
You are a security auditor performing a comprehensive security assessment. Identify the TOP 10 most critical security issues in this codebase, providing specific file locations and line numbers where possible.

**Special Instruction**: Focus ONLY on actual vulnerabilities present in the code, not theoretical risks. Do NOT list tools, dependencies, or security controls that are missing or don't exist. Only document what IS present in the codebase.

## Security Vulnerability Assessment

Analyze the codebase for the following vulnerability categories and report the TOP 10 most critical issues found:

### 1. Authentication & Session Management
- Weak password policies
- Insecure password storage (plain text, weak hashing)
- Session fixation vulnerabilities
- Missing session timeout
- Insecure token storage
- Broken authentication flows

### 2. Authorization & Access Control
- Missing authorization checks
- Privilege escalation paths
- Insecure direct object references (IDOR)
- Path traversal vulnerabilities
- Broken access control on sensitive functions
- Overly permissive CORS policies

### 3. Injection Vulnerabilities
- SQL injection
- NoSQL injection
- Command injection
- LDAP injection
- XPath injection
- Template injection
- Code injection

### 4. Data Exposure
- Hardcoded secrets (API keys, passwords, tokens)
- Sensitive data in logs
- Unencrypted sensitive data storage
- Sensitive data in URLs
- Information disclosure in error messages
- Exposed debug endpoints

### 5. Cryptographic Issues
- Use of weak algorithms (MD5, SHA1, DES)
- Insecure random number generation
- Hardcoded encryption keys
- Missing encryption for sensitive data
- Improper certificate validation
- Weak TLS/SSL configuration

### 6. Input Validation & Output Encoding
- Missing input validation
- Insufficient sanitization
- XSS vulnerabilities
- XXE vulnerabilities
- Deserialization vulnerabilities
- File upload vulnerabilities

### 7. Security Misconfiguration
- Default credentials
- Unnecessary services enabled
- Verbose error messages
- Missing security headers
- Insecure default settings
- Exposed admin interfaces

### 8. Vulnerable Dependencies
- Known vulnerable packages
- Outdated dependencies with security patches
- Unmaintained libraries
- Dependencies with known CVEs
- Insecure dependency configurations
- **For Python projects**: Check requirements.txt, pyproject.toml, setup.py, setup.cfg, Pipfile, and poetry.lock for vulnerable packages and outdated dependencies

**Note**: When looking for dependencies, package names, or library names, perform case-insensitive matching and consider variations with dashes between words (e.g., "new-relic", "data-dog", "express-rate-limit").

### 9. Business Logic Flaws
- Race conditions
- Time-of-check to time-of-use (TOCTOU)
- Insufficient rate limiting
- Missing anti-automation controls
- Improper transaction handling
- Price manipulation vulnerabilities

### 10. API Security
- Missing API authentication
- Excessive data exposure
- Lack of rate limiting
- Missing API versioning
- Broken object level authorization
- Mass assignment vulnerabilities

## Output Format

For each security issue found, provide:

### Issue #[1-10]: [Vulnerability Type]
**Severity:** CRITICAL | HIGH | MEDIUM | LOW
**Category:** [From categories above]
**Location:**
- File: `path/to/file.ext`
- Line(s): [specific line numbers]
- Function/Class: [if applicable]

**Description:**
[Clear explanation of the vulnerability]

**Vulnerable Code:**
```[language]
// Show the actual vulnerable code snippet
```

**Impact:**
[What an attacker could do with this vulnerability]

**Fix Required:**
[Specific fix needed]

**Example Secure Implementation:**
```[language]
// Show the corrected code
```

---

## Summary

After listing the top 10 issues, provide:

1. **Overall Security Posture:** Brief assessment
2. **Critical Issues Count:** Number of CRITICAL severity findings
3. **Most Concerning Pattern:** Recurring security anti-pattern observed
4. **Priority Fixes:** Top 3 issues to fix immediately
5. **Implementation Issues:** Patterns in the code that need attention

## Additional Security Issues Found

List any other security concerns found in the codebase that didn't make the top 10:
- Configuration vulnerabilities present
- Architecture security flaws identified
- Development implementation issues
- Insecure coding patterns found

**Note:** If fewer than 10 security issues are found, list only the actual issues discovered and note that the codebase has fewer security concerns than expected.

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## 14. Monitoring (monitoring)

version=12
You are a monitoring and observability expert. Analyze all monitoring, logging, metrics, tracing, and alerting mechanisms in this codebase.

**Critical Instructions**:

- Prioritize identifying services, tools, and mechanisms that are ACTUALLY USED in this codebase
- Clearly distinguish between what is implemented vs. what could be implemented
- If no monitoring mechanisms are found, return "no monitoring or observability detected"
- Focus and document only on what IS present, do NOT provide recommendations for gaps or missing tools
- Do NOT list tools, frameworks, or monitoring solutions that are not actually used in this codebase
- if there is a package.json or requirements.txt or pypromject.yaml, output the list of all dependencies found there in raw format under a special "raw dependencies section" at the end of the report and use that to make sure you didn't miss any monitoring or logging tools in your initial analysis

**Note:** The tools and services listed throughout this prompt are examples to guide your analysis. You are not limited to these lists - identify any monitoring, logging, metrics, or observability tools actually present in the codebase, regardless of whether they appear in the examples below.

**Note**: When looking for dependencies, package names, library names, or tool names, perform case-insensitive matching and consider variations with dashes between words (e.g., "new-relic", "data-dog", "express-rate-limit").

## Observability Platforms

### Integrated Observability Solutions

Identify any all-in-one observability platforms in use (examples include, but are not limited to):

- **Full-Stack Platforms:** DataDog, New Relic, Dynatrace, AppDynamics, Elastic Observability
- **Cloud-Native Platforms:** AWS CloudWatch/X-Ray, Azure Monitor, Google Cloud Operations Suite
- **Open Source Stacks:** Prometheus + Grafana + Loki + Tempo, ELK/OpenSearch Stack
- **Error & Performance:** Sentry (with performance monitoring), Rollbar, Bugsnag
- **User Monitoring and analytics:** LogRocket, FullStory, Hotjar and others (with performance features)

## Logging Infrastructure

### 1. Logging Frameworks & Libraries

Look for these common logging frameworks and libraries (examples include, but are not limited to):

#### **JavaScript/Node.js Logging**
- **General Purpose:** Winston, Bunyan, Pino, Log4js, Morgan, Debug, Loglevel, Consola, Roarr
- **Web Framework Specific:** Express.js morgan, Koa-logger, Fastify logger, NestJS Logger
- **Browser Logging:** Console API, LogRocket, Sentry, Bugsnag, Rollbar
- **Real-time:** Socket.io logging, WebSocket logging
- **Performance:** Pino (fastest), Bunyan (structured), Winston (features)

#### **Python Logging**
- **Built-in:** Python logging module, logging.config, logging.handlers
- **Third-party:** Loguru, Structlog, Logbook, Eliot, Picologging, Rich (console)
- **Web Framework Specific:** Django logging, Flask logging, FastAPI logging, Tornado logging
- **Async:** Asyncio logging, aiofiles for async file logging
- **Structured:** Structlog, pythonjsonlogger, python-json-logger

#### **Java/JVM Logging**
- **Core Frameworks:** Log4j 2, Logback, Java Util Logging (JUL), SLF4J (facade)
- **Legacy:** Log4j 1.x (deprecated), Apache Commons Logging
- **Modern:** Logback-classic, Log4j2-core, Tinylog
- **Framework Integration:** Spring Boot logging, Dropwizard metrics, Micronaut logging
- **Performance:** Chronicle-logger, Disruptor-based async logging

#### **C# / .NET Logging**
- **Microsoft:** Microsoft.Extensions.Logging, ILogger, EventSource, ETW
- **Third-party:** Serilog, NLog, log4net, Elmah, Loupe
- **Structured:** Serilog (structured), Seq integration
- **ASP.NET:** ASP.NET Core logging, Application Insights

#### **Go Logging**
- **Standard:** log package, slog (Go 1.21+)
- **Third-party:** Logrus, Zap, Zerolog, Glog, Klog
- **Structured:** Zap (performance), Logrus (features), Zerolog (zero allocation)
- **Framework Specific:** Gin logging, Echo logging, Fiber logging

#### **Rust Logging**
- **Core:** log crate, env_logger, simplelog
- **Advanced:** tracing, slog, fern, flexi_logger
- **Async:** tracing-subscriber, tokio-tracing
- **Structured:** slog, tracing with JSON

#### **Ruby Logging**
- **Built-in:** Logger class, Rails logger
- **Third-party:** Semantic Logger, Ougai, Fluentd logger
- **Rails Specific:** Rails.logger, Lograge, ActiveSupport::TaggedLogging
- **Structured:** Ougai, Semantic Logger

#### **PHP Logging**
- **PSR Standards:** PSR-3 LoggerInterface
- **Libraries:** Monolog, Analog, KLogger, Log
- **Framework Specific:** Laravel logging, Symfony logging, Drupal logging
- **Integration:** Syslog, file_put_contents, error_log

#### **Swift/iOS Logging**
- **Apple Frameworks:** os_log, OSLog, Logger (iOS 14+), NSLog
- **Third-party:** CocoaLumberjack, SwiftyBeaver, Willow
- **Analytics:** Firebase Analytics, Crashlytics

#### **Kotlin/Android Logging**
- **Android:** Log class, Timber, Logcat
- **JVM:** Same as Java (Logback, Log4j2, SLF4J)
- **Third-party:** Timber, Hugo, Logger

#### **Configuration & Setup**
- **Log Levels:** TRACE, DEBUG, INFO, WARN, ERROR, FATAL/CRITICAL
- **Formatters:** Plain text, JSON, XML, custom patterns, colorized output
- **Handlers/Appenders:** Console, file, rotating file, remote endpoints, database
- **Output Destinations:**
  - Local: Console, files, system logs (syslog, Windows Event Log)
  - Remote: HTTP endpoints, TCP/UDP sockets, message queues
  - Cloud: CloudWatch, Azure Monitor, Google Cloud Logging
- **Structured Logging:**
  - JSON format, key-value pairs, semantic logging
  - Correlation IDs, request tracing, contextual data
  - Schema enforcement, log event standardization
- **Log Rotation:**
  - Size-based rotation (e.g., 100MB per file)
  - Time-based rotation (daily, weekly, monthly)
  - Retention policies (keep 30 days, archive old logs)
  - Compression (gzip, zip) for archived logs

### 2. Log Categories

- **Application Logs:**
  - Business logic logging
  - User activity logs
  - Audit trails
  - Debug logs

- **System Logs:**
  - Error logs
  - Performance logs
  - Security logs
  - Access logs

### 3. Log Management & Infrastructure

#### **Centralized Logging Platforms**
- **ELK/Elastic Stack:** Elasticsearch, Logstash, Kibana, Beats, OpenSearch alternative
- **Commercial Platforms:** Splunk, Datadog Logs, New Relic Logs, Sumo Logic, Dynatrace
- **Cloud-Native:** AWS CloudWatch Logs, Azure Monitor Logs, Google Cloud Logging, IBM Log Analysis
- **Open Source:** Graylog, Fluentd + Elasticsearch, Loki + Grafana, Vector
- **Lightweight:** Papertrail, Loggly, LogDNA/Mezmo, BetterStack, Axiom

#### **Log Shipping & Collection**
- **Beat Family:** Filebeat, Metricbeat, Packetbeat, Winlogbeat, Auditbeat, Heartbeat
- **Fluentd Ecosystem:** Fluentd, Fluent Bit, td-agent
- **Logstash & Alternatives:** Logstash, Vector, rsyslog, syslog-ng, Promtail
- **Agent-based:** Datadog Agent, New Relic Agent, Splunk Universal Forwarder
- **Sidecar Pattern:** Kubernetes sidecar containers, service mesh logging
- **Direct Integration:** Application direct shipping, SDK integration, HTTP endpoints

#### **Log Aggregation Architecture**
- **Collection Tiers:** Edge collectors, aggregation layer, central storage
- **Protocol Support:** Syslog (RFC 3164/5424), HTTP/HTTPS, TCP/UDP, gRPC
- **Message Queues:** Kafka, RabbitMQ, Amazon SQS, Google Pub/Sub as buffers
- **Load Balancing:** Round-robin, geographic routing, failover mechanisms
- **Reliability:** At-least-once delivery, exactly-once processing, acknowledgments

#### **Search & Analysis**
- **Query Languages:**
  - Elasticsearch Query DSL, Lucene syntax
  - SQL-like queries (BigQuery, Azure Monitor KQL)
  - LogQL (Loki), SPL (Splunk), DataDog query syntax
- **Full-text Search:** Indexing strategies, field mapping, analyzer configuration
- **Time-series Analysis:** Time-based filtering, aggregations, trends
- **Pattern Recognition:** Grok patterns, regex, field extraction, parsing rules
- **Visualization:** Charts, tables, geo maps, heat maps, topology views

#### **Dashboards & Alerting**
- **Dashboard Tools:** Kibana, Grafana, Splunk, Datadog dashboards, custom web UIs
- **Saved Searches:** Bookmarked queries, scheduled reports, data exports
- **Real-time Monitoring:** Live tail, streaming dashboards, auto-refresh
- **Alert Configuration:**
  - Threshold-based alerts, anomaly detection, pattern matching
  - Alert channels: Email, Slack, PagerDuty, webhooks, SMS
  - Alert suppression, grouping, escalation policies

#### **Retention & Archival**
- **Retention Policies:**
  - Hot storage (recent, frequently accessed): 7-30 days
  - Warm storage (infrequent access): 30-90 days
  - Cold storage (archive): 90+ days, years for compliance
- **Compliance Requirements:** SOX, HIPAA, PCI-DSS, GDPR data retention
- **Archival Strategies:**
  - Amazon S3 Glacier, Azure Archive Storage, Google Coldline
  - Compressed formats, backup to tape systems
  - Legal hold capabilities, audit trail preservation
- **Data Lifecycle:** Automated tier transitions, deletion policies, recovery procedures

#### **Cost Optimization**
- **Sampling Strategies:**
  - Random sampling, intelligent sampling based on error rates
  - Trace sampling, head-based vs tail-based sampling
  - Dynamic sampling rates based on traffic volume
- **Filtering & Pre-processing:**
  - Log level filtering (exclude DEBUG in production)
  - Field filtering, sensitive data redaction
  - Duplicate removal, message compression
- **Storage Optimization:**
  - Index optimization, shard management
  - Compression algorithms (gzip, lz4, snappy)
  - Tiered storage, hot-warm-cold architecture
- **Query Optimization:** Index patterns, field caching, query result caching

#### **Security & Compliance**
- **Access Control:** Role-based permissions, field-level security, audit trails
- **Data Protection:**
  - Encryption in transit (TLS), encryption at rest
  - Log anonymization, PII scrubbing, sensitive data masking
  - Certificate management, mutual TLS authentication
- **Audit & Compliance:**
  - Admin action logging, configuration change tracking
  - User access logs, data export/download tracking
  - Compliance reporting, data sovereignty requirements

## Metrics & Monitoring

### 1. Metrics Collection Libraries & Frameworks

Look for these common metrics collection libraries and frameworks (examples include, but are not limited to):

#### **JavaScript/Node.js Metrics**
- **Core Libraries:** Node.js built-in perf_hooks, process.hrtime(), process.memoryUsage()
- **Third-party:** Prometheus client (prom-client), StatsD client, Datadog metrics, New Relic
- **Framework Integration:** Express-prometheus-middleware, Koa metrics, Fastify metrics
- **Real-time:** Socket.io metrics, WebSocket connection metrics
- **Performance:** clinic.js, autocannon, 0x profiler

#### **Python Metrics**
- **Built-in:** time, psutil, resource module, gc module
- **Prometheus:** prometheus_client, django-prometheus, flask-prometheus
- **Third-party:** statsd, datadog, newrelic, opencensus, opentelemetry
- **Framework Specific:** Django middleware, Flask metrics, FastAPI metrics
- **Scientific:** NumPy, SciPy for statistical metrics, Pandas for data analysis

#### **Java/JVM Metrics**
- **Core Frameworks:** Micrometer (Spring Boot), Dropwizard Metrics, JMX MBeans
- **Prometheus:** Prometheus JVM client, micrometer-registry-prometheus
- **APM Integration:** New Relic agent, AppDynamics, Datadog JVM
- **JVM Metrics:** GC metrics, memory pools, thread pools, class loading
- **Framework Integration:** Spring Boot Actuator, Dropwizard metrics

#### **C#/.NET Metrics**
- **Microsoft:** System.Diagnostics.Metrics (.NET 6+), Performance Counters, EventCounters
- **Third-party:** prometheus-net, App.Metrics, Datadog .NET client
- **APM:** Application Insights, New Relic .NET agent
- **Framework Integration:** ASP.NET Core metrics, Entity Framework metrics

#### **Go Metrics**
- **Standard:** expvar package, runtime metrics, pprof
- **Prometheus:** prometheus/client_golang, promauto
- **Third-party:** go-metrics (rcrowley), statsd, DataDog go client
- **Framework Specific:** Gin metrics, Echo metrics, Fiber metrics
- **Observability:** OpenTelemetry Go, Jaeger Go client

#### **Rust Metrics**
- **Core:** std::time, prometheus crate, metrics crate
- **Observability:** tracing-subscriber, opentelemetry-rust
- **Performance:** criterion for benchmarking, pprof-rs
- **Web Frameworks:** actix-web metrics, warp metrics, axum metrics

#### **Ruby Metrics**
- **Built-in:** Benchmark module, ObjectSpace, GC::Profiler
- **Gems:** prometheus-client, statsd-ruby, newrelic_rpm
- **Rails Specific:** Rails instrumentation, ActiveSupport::Notifications
- **Performance:** ruby-prof, memory_profiler, benchmark-ips

#### **PHP Metrics**
- **Built-in:** microtime(), memory_get_usage(), getrusage()
- **Extensions:** APCu, OPcache metrics, Xdebug profiler
- **Third-party:** Prometheus PHP client, StatsD PHP client
- **Framework Integration:** Symfony metrics, Laravel metrics, Drupal performance

#### **Swift/iOS Metrics**
- **Apple Frameworks:** MetricKit, os_signpost, Instruments
- **Performance:** CFAbsoluteTimeGetCurrent(), mach_absolute_time()
- **Third-party:** Firebase Performance, New Relic Mobile, DataDog iOS
- **Analytics:** Google Analytics, Adobe Analytics, Mixpanel

#### **Kotlin/Android Metrics**
- **Android:** System.currentTimeMillis(), Debug class, ActivityManager
- **Performance:** Firebase Performance, Android Vitals, Systrace
- **Third-party:** New Relic Mobile, DataDog Android, Sentry Performance
- **JVM:** Same as Java metrics (Micrometer, Prometheus client)

#### **Cross-Platform & Universal**
- **OpenTelemetry:** Multi-language observability framework
- **Prometheus:** Universal metrics collection and storage
- **StatsD:** Language-agnostic metrics aggregation
- **Grafana:** Universal dashboarding and visualization
- **InfluxDB:** Time-series database with clients for all languages

#### **Metric Types & Patterns**
- **Counters:** Monotonically increasing values (requests, errors, events)
- **Gauges:** Point-in-time values (memory usage, connections, queue depth)
- **Histograms:** Distribution of values (latency, response time, request size)
- **Summaries:** Statistical summaries (percentiles, quantiles, averages)
- **Timers:** Duration measurements with statistical distribution
- **Sets:** Unique value counting (unique users, distinct IPs)

### 2. Application Metrics Categories

#### **Business & Product Metrics**
- **User Engagement:** DAU/MAU, session duration, page views, bounce rates, retention, churn, feature adoption, conversion rates
- **Revenue & Commerce:** Transaction volumes, ARPU, cart abandonment, payment success/failure, subscription metrics (MRR, ARR, LTV, CAC)
- **Content & Media:** Content views, downloads, shares, streaming metrics, search relevance, click-through rates

#### **Performance Metrics**
- **Response Time Metrics:** P50, P95, P99 latencies, page load times, TTFB, DB query times, external service latencies
- **Throughput Metrics:** RPS, QPS, messages processed per minute, background job rates, data ingestion rates
- **Error & Reliability Metrics:** Error rates by service/endpoint/user, HTTP status distributions, exception rates, circuit breaker states
- **Saturation & Capacity:** Connection pool utilization, thread pool usage, queue depths, rate limiting hit rates

#### **Security & Compliance Metrics**
- **Authentication & Access:** Login success/failure rates, account lockouts, password reset requests, failed authorization attempts
- **Security Events:** Intrusion detection alerts, suspicious activity patterns, data access audit trails, compliance violation counts

### 3. Infrastructure & System Metrics

#### **Host/Server Metrics**
- **CPU Metrics:** CPU utilization, load averages, frequency scaling, process CPU usage
- **Memory Metrics:** RAM usage, swap usage, page faults, memory leaks detection
- **Storage Metrics:** Disk I/O, disk space, I/O wait times, disk health
- **Network Metrics:** Network throughput, packet counts, error rates, connection states

#### **Container & Orchestration Metrics**
- **Docker Metrics:** Container resource usage, lifecycle events, image sizes
- **Kubernetes Metrics:** Pod metrics, node metrics, deployment metrics, service mesh metrics
- **Cloud Platform Metrics:** AWS CloudWatch, Azure Monitor, GCP Monitoring

#### **Database & Storage Metrics**
- **SQL Database Metrics:** Connection pools, query performance, lock waits, replication lag
- **NoSQL Database Metrics:** Read/write capacity, shard distribution, cache hit ratios
- **Message Queue Metrics:** Queue depth, producer/consumer rates, dead letter queue counts, consumer lag

### 4. Custom & Advanced Metrics

#### **Business Intelligence Metrics**
- **Real-time Analytics:** Live user counts, real-time revenue, geographic distribution
- **Predictive Metrics:** Forecasting, anomaly detection scores, churn prediction

#### **Service Level Objectives (SLOs)**
- **Availability Metrics:** Service uptime, MTBF, MTTR, error budget burn rates
- **Performance SLOs:** Latency SLOs, throughput SLOs, quality SLOs

#### **A/B Testing & Feature Flags**
- **Experiment Metrics:** Exposure rates, conversion differences, statistical significance
- **Feature Adoption:** Usage by segments, rollout completion, rollback frequencies

## Distributed Tracing

### 1. Tracing Implementation
- **Tracing Framework:** OpenTelemetry, Jaeger, Zipkin, AWS X-Ray, DataDog APM, Google Cloud Trace, Azure Monitor, Tempo, Lightstep
- **Instrumentation:** Auto-instrumentation, manual instrumentation, library integrations, OpenTelemetry collectors

### 2. Trace Context
- **Correlation IDs:** Request tracking across services
- **Trace Propagation:** Headers, context passing
- **Span Management:** Parent-child relationships
- **Baggage/Tags:** Metadata attachment

### 3. Trace Analysis
- **Service Maps:** Dependency visualization
- **Latency Analysis:** Bottleneck identification
- **Error Tracking:** Error propagation paths
- **Performance Profiling:** Slow query detection

## Health Checks & Probes

### 1. Health Endpoints
- **Liveness Probes:** Basic application health
- **Readiness Probes:** Service availability
- **Startup Probes:** Initialization status
- **Deep Health Checks:** Dependency verification

### 2. Health Check Implementation
- **Endpoint Paths:** /health, /status, /ping
- **Response Format:** JSON, plain text
- **Status Codes:** Success/failure indicators
- **Dependency Checks:** Database, cache, external services

### 3. Circuit Breakers
- **Implementation:** Libraries used (Hystrix, Resilience4j, py-breaker)
- **Thresholds:** Failure rates, timeouts
- **Fallback Mechanisms:** Degraded service modes
- **Recovery:** Half-open states, retry logic

## Alerting & Incident Response

### 1. Alert Configuration
- **Alert Rules:** Threshold-based, anomaly detection, ML-based alerts
- **Alert Channels:** Email, Slack, PagerDuty, SMS, Opsgenie, VictorOps, Microsoft Teams, Discord, webhooks
- **Severity Levels:** Critical, warning, info, P1-P5 priorities
- **Alert Grouping:** Deduplication, correlation, alert suppression
- **On-Call Management:** PagerDuty, Opsgenie, VictorOps/Splunk On-Call, Grafana OnCall

### 2. Alert Types
- **Infrastructure Alerts:** Resource exhaustion, service failures, network issues
- **Application Alerts:** Error rate spikes, performance degradation, business metric anomalies
- **Security Alerts:** Unauthorized access, suspicious patterns, compliance violations

### 3. Incident Management
- **Escalation Policies:** On-call rotations
- **Runbooks:** Response procedures
- **Post-Mortems:** Incident analysis
- **SLA Monitoring:** Uptime tracking

## Performance Monitoring

### 1. Application Performance Monitoring (APM)
- **APM Tools:** New Relic, AppDynamics, Dynatrace, DataDog, Elastic APM, Azure Application Insights, AWS X-Ray
- **Code-Level Visibility:** Method timing, SQL queries, function profiling
- **Transaction Tracing:** End-to-end request flow
- **Performance Profiling:** CPU, memory, I/O bottlenecks

### 2. Error Tracking & Crash Reporting
- **Error Tracking Services:** Sentry, Rollbar, Bugsnag, Airbrake, Raygun, Honeybadger, AppCenter, Crashlytics/Firebase
- **Error Capture:** Unhandled exceptions, promise rejections, panic recovery, native crashes
- **Error Context:** Stack traces, breadcrumbs, user context, environment, device info
- **Error Grouping:** Fingerprinting, deduplication, trends, crash-free rates
- **Release Tracking:** Version-specific error rates, regression detection
- **Source Maps:** Minified code debugging, symbolication for native apps
- **Mobile Crash Reporting:** Firebase Crashlytics, Bugsnag, Sentry Mobile, AppCenter Crashes

### 3. Real User Monitoring (RUM) & Session Replay
- **RUM Tools:** LogRocket, FullStory, Hotjar, Heap, Mixpanel, Amplitude, Sentry
- **Client-Side Monitoring:** Browser performance, Core Web Vitals
- **User Experience Metrics:** Page load, interactions, rage clicks
- **Session Recording:** User behavior replay, console logs, network activity

### 4. Synthetic Monitoring
- **Monitoring Services:** Pingdom, StatusCake, UptimeRobot, Better Uptime, Datadog Synthetics
- **Availability Checks:** Uptime monitoring, SSL certificate monitoring
- **Transaction Monitoring:** Multi-step user flows, critical path testing
- **API Monitoring:** Endpoint availability, response validation

## Database Monitoring

### 1. Query Performance
- Slow Query Logs, Query Analysis, Index Usage, Lock Monitoring

### 2. Database Metrics
- Connection Pools, Cache Hit Rates, Replication Lag, Storage Metrics

## Message Queue Monitoring

### 1. Queue Metrics
- Queue Depth, Processing Rate, Error Rates, Consumer Lag

### 2. Dead Letter Queues
- DLQ Monitoring, Retry Mechanisms, Alert Thresholds

## Cost & Resource Monitoring

### 1. Cloud Cost Monitoring
- Cost Tracking, Budget Alerts, Resource Optimization, Cost Attribution

### 2. Capacity Planning
- Growth Trends, Scaling Metrics, Forecast Models

## Security Monitoring

### 1. Security Events
- Authentication Logs, Authorization Logs, Audit Trails, Threat Detection

### 2. Compliance Monitoring
- Regulatory Compliance, Policy Violations, Data Access Logs

## Dashboard & Visualization

### 1. Dashboard Tools
- **Visualization Platforms:** Grafana, Kibana/OpenSearch Dashboards, DataDog, New Relic, Tableau, Power BI, Chronograf, Redash
- **Custom Dashboards:** Business-specific views, team dashboards
- **Mobile Dashboards:** On-call access, mobile apps
- **TV Dashboards:** NOC displays, office monitors
- **Status Pages:** Statuspage, Cachet, Upptime, Better Stack

### 2. Dashboard Organization
- Service Dashboards, Business Dashboards, Technical Dashboards, Executive Dashboards

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## Dependencies

{repo_deps}

---

## 15. ML Services (ml_services)

version=3
# 3rd Party ML Services and Technologies Analysis

You are a machine learning and AI systems analyst. Analyze this codebase to identify and document all 3rd party machine learning services, AI technologies, and ML-related integrations.

**Special Instruction**: Focus ONLY on identifying services, tools, and mechanisms that are ACTUALLY USED in this codebase. Do NOT list ML services, frameworks, or tools that are not present in the code.

## Analysis Requirements

### 1. **External ML Service Providers**
Identify any usage of:
- **Cloud ML Services**: AWS SageMaker, Azure ML, Google AI Platform, Databricks, etc.
- **AI APIs**: OpenAI, Anthropic, Groq, Cohere, Hugging Face Inference API, etc.
- **Specialized Services**: Speech recognition (AWS Transcribe, Google Speech-to-Text), computer vision (AWS Rekognition, Google Vision), etc.
- **MLOps Platforms**: MLflow, Weights & Biases, Neptune, ClearML, etc.

### 2. **ML Libraries and Frameworks**
Document usage of:
- **Deep Learning**: PyTorch, TensorFlow, JAX, Keras, etc.
- **Traditional ML**: Scikit-learn, XGBoost, LightGBM, CatBoost, etc.
- **NLP**: Transformers, spaCy, NLTK, Gensim, etc.
- **Computer Vision**: OpenCV, PIL/Pillow, torchvision, etc.
- **Audio/Speech**: Whisper, librosa, speechbrain, etc.

**Note**: When looking for dependencies, package names, or library names, perform case-insensitive matching and consider variations with dashes between words (e.g., "tensor-flow", "scikit-learn", "hugging-face").

### 3. **Pre-trained Models and Model Hubs**
Look for:
- **Hugging Face Models**: Model downloads, transformers usage
- **Other Model Sources**: TensorFlow Hub, PyTorch Hub, custom model repositories
- **Specific Models**: BERT, GPT variants, Whisper, CLIP, etc.

### 4. **AI Infrastructure and Deployment**
Analyze:
- **Model Serving**: TorchServe, TensorFlow Serving, MLflow, custom solutions
- **Containerization**: Docker images with ML dependencies
- **GPU/Hardware**: CUDA usage, TPU integration, specialized hardware requirements
- **Scaling**: Auto-scaling for ML workloads, batch processing systems

## Analysis Format

For each identified ML technology, provide:

### AI Service/Technology Name
- **Type**: [External API / Self-hosted Library / Pre-trained Model / Infrastructure]
- **Purpose**: Brief description of what it's used for
- **Integration Points**: Where in the codebase it's used
- **Configuration**: How it's configured (environment variables, config files)
- **Dependencies**: Required packages, versions, hardware requirements
- **Cost Implications**: If applicable, pricing model or resource requirements
- **Data Flow**: What data is sent to external services (if any)
- **Criticality**: How essential it is to the application's functionality

## Security and Compliance Considerations

Document:
- **API Keys/Credentials**: How ML service credentials are managed
- **Data Privacy**: What data is sent to 3rd party ML services
- **Model Security**: How models are secured and validated
- **Compliance**: Any regulatory requirements (GDPR, HIPAA, etc.) affecting ML usage

## Code Examples

Include relevant code snippets that demonstrate:
- Service integration patterns
- Configuration examples
- Error handling for ML services
- Model loading and inference patterns

## Current Implementation Analysis

Document the current state of:
- **Cost Patterns**: ML service costs based on current usage
- **Performance Characteristics**: Current performance implementation
- **Security Implementation**: Security measures currently in place for ML integrations
- **Reliability Patterns**: Current fault tolerance and backup implementations
- **Vendor Dependencies**: Current dependencies on specific ML providers

## Summary

Conclude with:
- **Total Count**: Number of 3rd party ML services identified
- **Major Dependencies**: Most critical ML dependencies
- **Architecture Pattern**: Overall ML architecture approach (API-first, self-hosted, hybrid)
- **Risk Assessment:** Key risks and dependencies on external ML services

---

## Dependencies

{repo_deps}

---

## 16. Feature Flags (feature_flags)

version=1

You are a software architect who is an experts with feature flag systems , CI-CD and things related to them. Analyze all feature flag implementations and usage in this codebase.

**Special Instruction**: If no feature flag systems are found, return "no feature flag usage detected". Only document feature flag systems that are ACTUALLY implemented in the codebase. Do NOT list feature flag platforms or tools that are not present.

## Feature Flag Framework Detection

Identify any feature flag platforms or libraries in use:

**Commercial Platforms:**

- Flagsmith, LaunchDarkly, Split.io, Optimizely, ConfigCat, Unleash

**Open Source/Custom:**

- Unleash (self-hosted), custom database flags, environment variables

**SDKs/Libraries:**

- Look for packages like: `launchdarkly-*`, `flagsmith-*`, `@splitsoftware/*`, `@unleash/*`, `configcat-*`, etc.

## Feature Flag Inventory

For each flag found, document:

### Flag: `flag_name`

**Type:** [Boolean/String/Number/JSON]

**Purpose:** [Brief description]

**Default Value:** [Default state]

**Used In:**

- File: `path/to/file.ext` (lines X-Y)
- Component/Function: [where it's evaluated]
- How would turning the flag on and off  affect the application (look closely at related methods, funxtions and classes)

**Evaluation Pattern:**

```[language]
// Show actual code snippet
```

## Framework Configuration

**Platform Used:** [Name of platform/library]

**Configuration:**

- API keys/tokens: [how managed]
- Environment setup: [dev/staging/prod differences]
- Client initialization: [file location]

## Flag Usage Patterns

**Common Patterns:**

- Simple boolean checks: `if (flag.enabled)`
- String variations: `flag.getValue('theme')`
- User targeting: `flag.isEnabledForUser(user)`

**Context Used:**

- User attributes: [ID, email, plan, etc.]
- Custom attributes: [device, location, etc.]

## Flag Categories

Group flags by purpose:

**Release Flags:** [List flags used for gradual rollouts]

**Kill Switches:** [List flags for emergency disabling]

**A/B Tests:** [List experimental flags]

**Configuration:** [List flags controlling behavior/settings]

Format the output clearly using markdown

---

## Repository Structure and Files

{repo_structure}

---

## Dependencies

{repo_deps}

---

## 17. Prompt Security Check (prompt_security_check)

version=2
# Prompt Injection and LLM Security Assessment

You are a security auditor specializing in LLM and prompt injection vulnerabilities. First, identify all LLM usage in this codebase, then analyze for security issues based on the "lethal trifecta" framework and other known attack vectors.

**IMPORTANT**: If this repository does not use LLMs, AI models, or any LLM-based infrastructure, simply respond with:
"No LLM usage detected - prompt injection review not relevant for this repository."

## Part 1: LLM Usage Detection and Documentation

### 1.1 LLM Infrastructure Identification

Scan the entire codebase using multiple detection strategies:

#### Detection Strategy 1: Library and Package Detection

Look for these in imports, requirements, dependencies, and package files:

- **API-based LLMs:**
  - OpenAI (GPT-3.5, GPT-4, GPT-4 Turbo, GPT-5, text-davinci, etc.)
  - Anthropic (Claude, Claude 2, Claude 3, etc.)
  - Google (PaLM, Gemini, Bard API, etc.)
  - Mistral, Cohere, AI21, Replicate, etc.

- **Local/Self-hosted Models:**
  - HuggingFace Transformers
  - Ollama
  - llama.cpp
  - GGML/GGUF models
  - vLLM, TGI, or other inference servers

- **LLM Frameworks & Tools:**
  - LangChain, LlamaIndex
  - Semantic Kernel, Haystack
  - Model Context Protocol (MCP)
  - AutoGPT, BabyAGI, or other agent frameworks
  - Vector databases (Pinecone, Weaviate, Chroma, FAISS, etc.)

#### Detection Strategy 2: Import/Include Pattern Matching

Search for import/require/include statements across all languages (case-insensitive):

**Python:**
- `import anthropic` or `from anthropic`
- `import openai` or `from openai`
- `import google.generativeai` or `from google.generativeai`
- `import transformers` or `from transformers`

**JavaScript/TypeScript:**
- `require('openai')` or `require("openai")`
- `import OpenAI from 'openai'`
- `import { Anthropic } from '@anthropic-ai/sdk'`
- `import { GoogleGenerativeAI } from '@google/generative-ai'`

**Java:**
- `import com.openai.*`
- `import com.anthropic.*`
- `import com.google.cloud.aiplatform.*`

**C#/.NET:**
- `using OpenAI;`
- `using Azure.AI.OpenAI;`
- `using Anthropic;`

**Go:**
- `import "github.com/sashabaranov/go-openai"`
- `import "github.com/anthropics/anthropic-sdk-go"`

**Ruby:**
- `require 'openai'`
- `gem 'ruby-openai'`

**PHP:**
- `use OpenAI\Client;`
- `require_once 'vendor/openai-php/client';`

**Rust:**
- `use openai_api_rust::*;`
- `use anthropic::*;`

Any variations with underscores, hyphens, or different casing

#### Detection Strategy 3: API Client Instantiation Patterns

Look for direct API client creation across languages:

**Python:**
- `Anthropic(` or `anthropic.Anthropic(`
- `OpenAI(` or `openai.OpenAI(`
- `GoogleGenerativeAI(`

**JavaScript/TypeScript:**
- `new OpenAI({` or `new OpenAI(`
- `new Anthropic({` or `new Anthropic(`
- `new ChatGPTAPI(`
- `new GoogleGenerativeAI(`

**Java:**
- `new OpenAiService(`
- `OpenAI.builder()`
- `AnthropicClient.create(`
- `VertexAI.init(`

**C#/.NET:**
- `new OpenAIClient(`
- `new AnthropicClient(`
- `new AzureOpenAIClient(`

**Go:**
- `openai.NewClient(`
- `anthropic.NewClient(`
- `azopenai.NewClient(`

**Ruby:**
- `OpenAI::Client.new(`
- `Anthropic::Client.new(`

**PHP:**
- `OpenAI::client(`
- `new OpenAIClient(`
- `Anthropic::factory(`

**Generic Patterns (any language):**
- Any class/object ending in `Client`, `API`, `Service`, `Analyzer`, `Generator` with LLM-related context
- Constructor calls with `apiKey`, `api_key`, `token` parameters

#### Detection Strategy 4: API Method Call Patterns

Search for characteristic API method calls across languages:

**Common Patterns (most languages):**
- `.messages.create(` (Anthropic pattern)
- `.chat.completions.create(` (OpenAI pattern)
- `.completions.create(`
- `.generateContent(` or `.generate_content(`
- `.generateText(` or `.generate_text(`
- `.complete(` or `.completion(`
- `.invoke(` with prompt/text parameters
- `.predict(` with text parameters
- `.embed(` or `.embeddings.create(`
- `.createCompletion(`
- `.createChatCompletion(`
- `.sendMessage(` or `.send_message(`

**HTTP/REST patterns (any language):**
- POST requests to `api.openai.com`, `api.anthropic.com`, `generativelanguage.googleapis.com`
- Headers with `Authorization: Bearer` or `x-api-key`
- Request bodies with `prompt`, `messages`, `model` fields

#### Detection Strategy 5: Configuration and Environment Variables

Look for LLM-related configuration:
- Environment variables: `OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, `CLAUDE_API_KEY`, etc.
- Config files with: `api_key`, `model`, `temperature`, `max_tokens`
- Model names in strings: "gpt-", "claude-", "text-davinci", "gemini", etc.

#### Detection Strategy 6: Prompt-Related Patterns

Search for prompt handling code:
- Variables/parameters named: `prompt`, `system_prompt`, `user_prompt`, `messages`
- Template strings with placeholders: `{context}`, `{input}`, `{question}`
- Prompt construction: string concatenation with user input
- Files with extensions: `.prompt`, `.tmpl`, or directories named `prompts`

#### Detection Strategy 7: Custom Implementation Patterns

Look for custom wrapper classes or modules:
- Files/classes with names containing: `llm`, `ai`, `ml`, `claude`, `gpt`, `analyzer`, `generator`
- Classes that have methods like `analyze`, `generate`, `complete`, `predict` with text parameters
- Any file that processes text and returns AI-generated responses

- **Prompt Engineering:**
  - Prompt templates or prompt management systems
  - Few-shot learning examples
  - Chain-of-thought prompting
  - System prompts or instruction templates

### 1.2 File Analysis Instructions

When analyzing the repository structure:

1. **Priority Files to Examine:**
   - Any file with names containing: `llm`, `ai`, `ml`, `claude`, `gpt`, `openai`, `anthropic`, `analyzer`, `generator`
   - Configuration files: `config.*`, `settings.*`, `.env`, `application.properties`, `appsettings.json`
   - Package/dependency files (Python, JS, Java, C#, Go, Ruby, PHP, Rust)
   - Main application files that might orchestrate AI functionality
   - Files in directories named: `ai`, `ml`, `llm`, `models`, `prompts`, `agents`

2. **Code Patterns to Flag:**
   - Any class or function that takes text input and returns generated text
   - Methods that build or manipulate prompts
   - API key handling or authentication for external services
   - HTTP requests to known AI service endpoints
   - Model loading or initialization code

3. **Don't Be Misled By:**
   - Comments or documentation mentioning LLMs (focus on actual implementation)
   - Test files that mock LLM behavior (note these separately)
   - Example code that isn't actually used

### 1.3 Detailed Usage Documentation

For EACH LLM usage found, document:

#### Usage #[N]: [Component/Feature Name]

**Type:** [API/Local/Framework]
**Technology:** [Specific LLM or framework]
**Location:**
- Files: `path/to/file1.ext`, `path/to/file2.ext`
- Key Classes/Functions: [list them]

**Purpose:** [What this LLM usage accomplishes]

**Configuration:**
- Model: [model name/version]
- Temperature: [if configured]
- Max tokens: [if configured]
- Other parameters: [list any]

**Data Flow:**
- **Input Sources:** [Where data comes from]
- **Processing:** [How the LLM processes this data]
- **Output Destinations:** [Where results go]

**Access Controls:**
- Authentication required: [YES/NO]
- Authorization checks: [Describe any]
- Rate limiting: [YES/NO]

### 1.4 LLM Usage Summary

**Total LLM Integrations Found:** [count]

**Primary Use Cases:**
1. [Main purpose 1]
2. [Main purpose 2]

**External Dependencies:**
- API Keys Required: [list which services]
- Models to Download: [list any local models]
- Additional Services: [vector DBs, etc.]

## Part 2: Security Vulnerability Assessment

Based on the LLM usage identified above, analyze for security vulnerabilities:

### 2.1 The Lethal Trifecta Analysis

For EACH LLM usage identified in Part 1, evaluate if it has all three dangerous components:

#### Component 1: Access to Private Data
- Database access with sensitive data
- File system access to confidential documents
- API access to internal services
- Access to user PII or credentials
- Integration with private repositories

#### Component 2: Ability to Externally Communicate
- HTTP/HTTPS request capabilities
- Email or messaging functionality
- File creation in publicly accessible locations
- API calls to external services
- Webhook or callback mechanisms

#### Component 3: Exposure to Untrusted Content
- Direct user input processing
- Reading from public sources (issues, PRs, comments)
- Processing external API responses
- Ingesting web content or scraped data
- Handling uploaded files or documents

**Lethal Trifecta Assessment per Usage:**

| LLM Usage | Private Data | External Comm | Untrusted Input | Risk Level |
|-----------|--------------|---------------|-----------------|------------|
| Usage #1  | YES/NO       | YES/NO        | YES/NO          | CRITICAL/HIGH/MEDIUM/LOW |

### 2.2 Specific Vulnerability Checks

For each LLM integration identified, check for:

1. **String Concatenation Issues** - Direct string concatenation of user input with prompts
2. **Markdown Exfiltration Vectors** - Unfiltered Markdown rendering from LLM outputs
3. **Tool/Function Calling Security** - Unrestricted tool access or missing validation
4. **Insufficient Input Sanitization** - Missing or weak input validation
5. **System Prompt Protection** - Weak system prompt handling
6. **Output Validation** - Direct execution or rendering without validation
7. **MCP Security Issues** - Dangerous MCP server combinations
8. **RAG Issues** - Untrusted documents in retrieval corpus
9. **Multi-Agent Security** - Agents trusting outputs from other agents
10. **API Key and Secret Management** - Hardcoded keys, client-side exposure

## Part 3: Vulnerability Report

### 3.1 Detailed Vulnerability Findings

For each vulnerability found, provide:

#### Issue #[N]: [Vulnerability Name]
**Severity:** CRITICAL | HIGH | MEDIUM | LOW
**Type:** [Prompt Injection | Data Exfiltration | Access Control | etc.]
**Affected LLM Usage:** [Reference Usage #N from Part 1]
**Location:** File, Line(s), Function/Class

**Vulnerable Pattern:** [code snippet]
**Attack Scenario:** [description]
**Mitigation:** [specific fix]
**Secure Implementation:** [corrected code]

### 3.2 Risk Assessment Summary

#### Overall Lethal Trifecta Status
- [ ] Access to Private Data: [YES/NO - explain]
- [ ] External Communication: [YES/NO - explain]
- [ ] Untrusted Input Exposure: [YES/NO - explain]
- **Overall Risk:** [CRITICAL if all 3, HIGH if 2, MEDIUM if 1]

#### Required Mitigations
1. **Immediate:** [Critical fixes needed]
2. **Short-term:** [Important fixes]
3. **Long-term:** [Architectural changes]

### 3.3 Security Control Implementation Status

- [ ] Input validation layer [Present/Absent]
- [ ] Output sanitization [Present/Absent]
- [ ] Prompt injection detection [Present/Absent]
- [ ] Rate limiting [Present/Absent]
- [ ] Audit logging [Present/Absent]
- [ ] Domain allow-listing [Present/Absent]
- [ ] Principle of least privilege for LLM tools [Implemented/Not Implemented]
- [ ] Separation of trusted/untrusted contexts [Implemented/Not Implemented]
- [ ] Secure prompt template management [Implemented/Not Implemented]
- [ ] Security testing [Implemented/Not Implemented]

**Note:** Focus on actual vulnerabilities present in the code with specific file locations and line numbers. Avoid theoretical risks without concrete evidence in the codebase.

---

## Repository Structure and Files

{repo_structure}
