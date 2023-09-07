.class Lcom/xiaomi/passport/ui/page/e$i;
.super Ljava/lang/Object;
.source "PhoneAccountLoginFragment.java"

# interfaces
.implements Lr6/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr6/a$a<",
        "Ljava/util/List<",
        "Lcom/xiaomi/passport/ui/data/PhoneAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/e$i;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/passport/ui/page/e$i;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/xiaomi/passport/ui/page/e$i;->c:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/xiaomi/passport/ui/page/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/page/e$i;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/ui/data/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$i;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/e$i;->b:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Li7/b;

    .line 6
    .line 7
    iget v3, p0, Lcom/xiaomi/passport/ui/page/e$i;->c:I

    .line 8
    .line 9
    invoke-direct {v2, v3}, Li7/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lw6/b;->a(Landroid/content/Context;Ljava/lang/String;Li7/b;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/page/e$i;->a()Ljava/util/List;

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
