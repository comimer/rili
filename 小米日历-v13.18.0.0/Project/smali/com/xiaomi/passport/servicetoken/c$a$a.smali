.class Lcom/xiaomi/passport/servicetoken/c$a$a;
.super Ljava/lang/Object;
.source "ServiceTokenOp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/c$a;->b()Lcom/xiaomi/passport/servicetoken/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/servicetoken/b;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/c$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/c$a;Lcom/xiaomi/passport/servicetoken/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/c$a$a;->b:Lcom/xiaomi/passport/servicetoken/c$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/c$a$a;->a:Lcom/xiaomi/passport/servicetoken/b;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/c$a$a;->a:Lcom/xiaomi/passport/servicetoken/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/c$a$a;->b:Lcom/xiaomi/passport/servicetoken/c$a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/c$a;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ly5/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/c$a$a;->a:Lcom/xiaomi/passport/servicetoken/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ly5/a;->f(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
    .line 20
    .line 21
    .line 22
.end method
