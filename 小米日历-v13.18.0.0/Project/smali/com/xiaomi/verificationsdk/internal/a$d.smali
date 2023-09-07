.class Lcom/xiaomi/verificationsdk/internal/a$d;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/verificationsdk/internal/a;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/SensorEvent;

.field final synthetic b:Lcom/xiaomi/verificationsdk/internal/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/verificationsdk/internal/a;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/verificationsdk/internal/a$d;->b:Lcom/xiaomi/verificationsdk/internal/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/verificationsdk/internal/a$d;->a:Landroid/hardware/SensorEvent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/verificationsdk/internal/a$d;->b:Lcom/xiaomi/verificationsdk/internal/a;

    .line 2
    .line 3
    new-instance v1, Lcom/xiaomi/verificationsdk/internal/a$f;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/xiaomi/verificationsdk/internal/a$d;->a:Landroid/hardware/SensorEvent;

    .line 6
    .line 7
    invoke-direct {v1, v0, v2}, Lcom/xiaomi/verificationsdk/internal/a$f;-><init>(Lcom/xiaomi/verificationsdk/internal/a;Landroid/hardware/SensorEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/xiaomi/verificationsdk/internal/a;->d(Lcom/xiaomi/verificationsdk/internal/a;Lcom/xiaomi/verificationsdk/internal/a$f;)V

    .line 11
    .line 12
    .line 13
    return-void
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
