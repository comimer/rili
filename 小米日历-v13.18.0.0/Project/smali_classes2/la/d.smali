.class public final synthetic Lla/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lla/e$a;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lla/e$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/d;->a:Lla/e$a;

    iput-object p2, p0, Lla/d;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lla/d;->a:Lla/e$a;

    iget-object v1, p0, Lla/d;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lla/e$a;->a(Lla/e$a;Landroid/view/View;)V

    return-void
.end method
