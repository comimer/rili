.class public final synthetic Lu3/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lu3/h;


# direct methods
.method public synthetic constructor <init>(Lu3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/f;->a:Lu3/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lu3/f;->a:Lu3/h;

    invoke-static {v0, p1}, Lu3/h;->W(Lu3/h;Landroid/view/View;)V

    return-void
.end method
