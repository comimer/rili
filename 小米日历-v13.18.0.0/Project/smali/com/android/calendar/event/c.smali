.class public final synthetic Lcom/android/calendar/event/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EditEventActivity;

.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EditEventActivity;ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/c;->a:Lcom/android/calendar/event/EditEventActivity;

    iput p2, p0, Lcom/android/calendar/event/c;->b:I

    iput-object p3, p0, Lcom/android/calendar/event/c;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/event/c;->a:Lcom/android/calendar/event/EditEventActivity;

    iget v1, p0, Lcom/android/calendar/event/c;->b:I

    iget-object v2, p0, Lcom/android/calendar/event/c;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EditEventActivity;->c0(Lcom/android/calendar/event/EditEventActivity;ILandroid/widget/ImageView;)V

    return-void
.end method
