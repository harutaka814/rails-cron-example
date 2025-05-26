# README

## 動作確認

```bash
docker compose build
```

```bash
docker compose up
```

別のターミナルを開き、bashでコンテナに入ります。

```bash
docker compose exec web bash
```

cronジョブが登録されているか確認。

```bash
crontab -l
```

cronが正常に動作しているかログで確認。

```bash
tail -f log/development.log
```

毎分こんな感じでログが出れば成功です！

```bash
Cron task executed at: 2024-05-23 15:01:00 +0900
```
