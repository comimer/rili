.class Lcom/market/sdk/c$d;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Li3/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/c;->Q(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/market/sdk/c;


# direct methods
.method constructor <init>(Lcom/market/sdk/c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/market/sdk/c$d;->b:Lcom/market/sdk/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/market/sdk/c$d;->a:Landroid/net/Uri;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/market/sdk/c$d;->b:Lcom/market/sdk/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/market/sdk/c;->w0(Lcom/market/sdk/c;)Li6/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/market/sdk/c$d;->b:Lcom/market/sdk/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/market/sdk/c;->w0(Lcom/market/sdk/c;)Li6/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/market/sdk/c$d;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Li6/a;->Q(Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "FloatService"

    .line 22
    .line 23
    const-string v1, "IAppDownloadManager is null"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/market/sdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
