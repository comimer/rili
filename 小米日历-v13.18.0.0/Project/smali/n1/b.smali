.class public final synthetic Ln1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Ln1/c;

.field public final synthetic b:I

.field public final synthetic c:Ln1/e$a;

.field public final synthetic d:Ln1/c$a;


# direct methods
.method public synthetic constructor <init>(Ln1/c;ILn1/e$a;Ln1/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/b;->a:Ln1/c;

    iput p2, p0, Ln1/b;->b:I

    iput-object p3, p0, Ln1/b;->c:Ln1/e$a;

    iput-object p4, p0, Ln1/b;->d:Ln1/c$a;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Ln1/b;->a:Ln1/c;

    iget v1, p0, Ln1/b;->b:I

    iget-object v2, p0, Ln1/b;->c:Ln1/e$a;

    iget-object v3, p0, Ln1/b;->d:Ln1/c$a;

    invoke-static {v0, v1, v2, v3, p1}, Ln1/c;->g(Ln1/c;ILn1/e$a;Ln1/c$a;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
