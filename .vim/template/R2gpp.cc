#ifndef __CINT__
int main (int argc, char *argv[])
{
	TApplication app("ROOT application", &argc, argv);

	app.Run();
	return 0;
}
#endif
