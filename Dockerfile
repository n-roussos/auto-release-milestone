FROM mcr.microsoft.com/dotnet/sdk:8.0.101


LABEL "com.github.actions.name" = "Auto Release Milestone"
LABEL "com.github.actions.description" = "Drafts a GitHub release based on a nealy created milestone."

LABEL verions="0.1.0"
LABEL repository="https://github.com/n-roussos/auto-release-milestone"
LABEL maintainer="Nick Roussos"

# JQ toolkit to parse event JSON file
RUN apt-get update && apt-get install -y jq
RUN dotnet tool install -g GitReleaseManager.Tool

# Update $PATH env variable
ENV PATH /root/.dotnet/tools:$PATH

COPY entrypoint.sh /
ENTRYPOINT [ "./entrypoint.sh" ]