.class public final synthetic Lo1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/d;->a:Lcom/android/calendar/alerts/AlertActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lo1/d;->a:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/android/calendar/alerts/AlertActivity;->Y(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
