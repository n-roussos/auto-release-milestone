FROM mcr.microsoft.com/dotnet/core/sdk:latest

LABEL "com.github.actions.name" = "Auto Release Milestone"
LABEL "com.github.actions.description" = "Drafts a GitHub release based on a nealy created milestone."

LABEL verions="0.1.0"
LABEL repository="https://github.com/n-roussos/auto-release-milestone"
LABEL maintainer="Nick Roussos"

COPY entrypoint.sh /
ENTRYPOINT [ "./entrypoint.sh" ]