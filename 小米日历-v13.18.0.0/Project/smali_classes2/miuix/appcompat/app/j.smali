.class public final synthetic Lmiuix/appcompat/app/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/AlertController$7;

.field public final synthetic b:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertController$7;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/j;->a:Lmiuix/appcompat/app/AlertController$7;

    iput-object p2, p0, Lmiuix/appcompat/app/j;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/j;->a:Lmiuix/appcompat/app/AlertController$7;

    iget-object v1, p0, Lmiuix/appcompat/app/j;->b:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController$7;->a(Lmiuix/appcompat/app/AlertController$7;Landroid/view/WindowInsets;)V

    return-void
.end method
