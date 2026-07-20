.PHONY: format
format: ## Format all Go source files
	@go fmt ./...

.PHONY: golangci
golangci:
	@golangci-lint run ./...

.PHONY: vet
vet: ## Run static analysis
	@go vet ./...

.PHONY: test
test: ## Run tests
	@go test ./...