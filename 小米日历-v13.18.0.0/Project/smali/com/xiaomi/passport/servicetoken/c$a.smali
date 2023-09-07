.class public abstract Lcom/xiaomi/passport/servicetoken/c$a;
.super Ljava/lang/Object;
.source "ServiceTokenOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method public b()Lcom/xiaomi/passport/servicetoken/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Ly5/a$c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/c;->a()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/xiaomi/passport/servicetoken/c$a$a;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/servicetoken/c$a$a;-><init>(Lcom/xiaomi/passport/servicetoken/c$a;Lcom/xiaomi/passport/servicetoken/b;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
    .line 20
    .line 21
    .line 22
.end method
