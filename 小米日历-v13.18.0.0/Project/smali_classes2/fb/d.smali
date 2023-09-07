.class public final synthetic Lfb/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfb/e;


# direct methods
.method public synthetic constructor <init>(Lfb/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb/d;->a:Lfb/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfb/d;->a:Lfb/e;

    invoke-static {v0, p1}, Lfb/e;->l(Lfb/e;Landroid/view/View;)V

    return-void
.end method
