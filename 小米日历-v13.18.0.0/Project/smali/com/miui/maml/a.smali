.class public final synthetic Lcom/miui/maml/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/maml/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/a;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/maml/a;->b:Z

    invoke-static {v0, v1}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->a(Landroid/content/Context;Z)V

    return-void
.end method
