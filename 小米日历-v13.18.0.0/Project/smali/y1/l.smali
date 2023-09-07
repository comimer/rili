.class public final synthetic Ly1/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly1/o;


# direct methods
.method public synthetic constructor <init>(Ly1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/l;->a:Ly1/o;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly1/l;->a:Ly1/o;

    invoke-static {v0, p1}, Ly1/o;->j(Ly1/o;Landroid/view/View;)V

    return-void
.end method
