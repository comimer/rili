.class public final synthetic Lt3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lt3/c;


# direct methods
.method public synthetic constructor <init>(Lt3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/b;->a:Lt3/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lt3/b;->a:Lt3/c;

    invoke-static {v0, p1}, Lt3/c;->V(Lt3/c;Landroid/view/View;)V

    return-void
.end method
