## http post and get requests

```shell
http --json :9000/api/leads/ 'name=Jane Williams' 'email=jane@gmail.com' 'message=Please contact Jane'
```

List all data entries from the Lead table
```shell
http --json :9000/api/leads/ 
```

## Fixtures

To dumpdate in yaml format install `pyyaml`

```shell
pipi install pyyaml
```

Fixtures for the Lead table in `yaml` format were created with

```shell
python manage.py dumpdata --format yaml leads.lead > ./leads/fixtures/leads.yaml
```
