.class public final synthetic Lk3/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/passport/accountmanager/i;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lk3/d$b;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/c;->a:Lcom/xiaomi/passport/accountmanager/i;

    iput-object p2, p0, Lk3/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lk3/c;->c:Lk3/d$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/c;->a:Lcom/xiaomi/passport/accountmanager/i;

    iget-object v1, p0, Lk3/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lk3/c;->c:Lk3/d$b;

    invoke-static {v0, v1, v2}, Lk3/d$a;->b(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V

    return-void
.end method
