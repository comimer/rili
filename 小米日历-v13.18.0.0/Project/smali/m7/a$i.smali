.class Lm7/a$i;
.super Ljava/lang/Object;
.source "VerificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/a;->w0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/verificationsdk/internal/b;

.field final synthetic b:Lm7/a;


# direct methods
.method constructor <init>(Lm7/a;Lcom/xiaomi/verificationsdk/internal/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm7/a$i;->b:Lm7/a;

    .line 2
    .line 3
    iput-object p2, p0, Lm7/a$i;->a:Lcom/xiaomi/verificationsdk/internal/b;

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
    iget-object v0, p0, Lm7/a$i;->b:Lm7/a;

    .line 2
    .line 3
    invoke-static {v0}, Lm7/a;->b(Lm7/a;)Lm7/a$o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm7/a$i;->a:Lcom/xiaomi/verificationsdk/internal/b;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lm7/a$o;->b(Lcom/xiaomi/verificationsdk/internal/b;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lm7/a$i;->b:Lm7/a;

    .line 13
    .line 14
    invoke-static {v0}, Lm7/a;->s(Lm7/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lm7/a;->n0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method
