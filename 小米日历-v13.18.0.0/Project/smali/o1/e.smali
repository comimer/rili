.class public final synthetic Lo1/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/e;->a:Lcom/android/calendar/alerts/AlertActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo1/e;->a:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->a0(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
