.class public final synthetic Lcom/android/calendar/homepage/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/r;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/r;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->c0(Lcom/android/calendar/homepage/AllInOneActivity;)Z

    move-result v0

    return v0
.end method
