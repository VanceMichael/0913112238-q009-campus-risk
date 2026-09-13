# 冠军校园活动风险处置时间线

后端接收活动签到、环节和风险处置事件，保留可追溯时间线。服务使用 SQLite 文件记录本地状态。

```bash
docker build -t campus-risk .
docker run --rm -p 8080:8080 campus-risk
```
