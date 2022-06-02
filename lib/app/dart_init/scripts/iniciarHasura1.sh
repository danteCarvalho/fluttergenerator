#! /bin/bash
docker run --name teste -t -i --net=host  \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://teste:a@localhost:5432/teste \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       -e HASURA_GRAPHQL_SERVER_PORT=6001 \
       -e HASURA_GRAPHQL_ADMIN_SECRET="fj3f" \
       -e HASURA_GRAPHQL_JWT_SECRET='{"type":"HS256", "key": "tkGStmgfm6h8MV8IJNB60amcRZ93GHo8"}' \
        hasura/graphql-engine:latest
