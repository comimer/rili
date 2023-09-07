.class Ls6/c$a;
.super Ljava/lang/Object;
.source "AuthProvider.java"

# interfaces
.implements Lr6/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/c;->c(Landroid/content/Context;Ls6/b;Lr6/a$d;Lr6/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr6/a$a<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ls6/b;

.field final synthetic c:Ls6/c;


# direct methods
.method constructor <init>(Ls6/c;Landroid/content/Context;Ls6/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls6/c$a;->c:Ls6/c;

    .line 2
    .line 3
    iput-object p2, p0, Ls6/c$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Ls6/c$a;->b:Ls6/b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls6/c$a;->c:Ls6/c;

    .line 2
    .line 3
    iget-object v1, p0, Ls6/c$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Ls6/c$a;->b:Ls6/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ls6/c;->d(Landroid/content/Context;Ls6/b;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Ls6/c$a;->c:Ls6/c;

    .line 12
    .line 13
    iget-object v2, p0, Ls6/c$a;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ls6/c;->a(Ls6/c;Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ls6/p;->k()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;

    .line 26
    .line 27
    sget-object v1, Ls6/p;->d:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ls6/p;->j()V

    .line 33
    .line 34
    .line 35
    throw v0
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

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls6/c$a;->a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
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
.end method
