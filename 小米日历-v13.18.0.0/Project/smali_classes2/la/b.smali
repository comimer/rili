.class public final synthetic Lla/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lla/e;


# direct methods
.method public synthetic constructor <init>(Lla/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/b;->a:Lla/e;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lla/b;->a:Lla/e;

    invoke-static {v0}, Lla/e;->p(Lla/e;)V

    return-void
.end method
