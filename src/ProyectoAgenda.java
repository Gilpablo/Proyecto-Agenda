import java.util.Scanner;

public class ProyectoAgenda {

	public static int pintaMenu() {
		int opc;

		Scanner leer = new Scanner(System.in);

		do {

			System.out.println("AGENDA");
			System.out.println("---------");
			System.out.println("1-Anadir contactos");
			System.out.println("2-Buscar contacto");
			System.out.println("3-Editar contacto");
			System.out.println("4-Eliminar contacto");
			System.out.println("5-Ver todos los contactos");
			System.out.println("6-Salir");

			System.out.println("Dime una opcion");
			opc = leer.nextInt();

			if ((opc < 1) || (opc > 6)) {
				System.out.println("Esta opcion es invalida, vuelve a intertarlo");
			}

		} while ((opc < 1) || (opc > 6));

		return opc;
	}

	public static void main(String[] args) {

		Scanner leer = new Scanner(System.in);
		
		String mContacos[][];
		
		mContacos=new String [10][2];
		
		int opcion=0;

		while (opcion != 6) {
			opcion = pintaMenu();
			switch (opcion) {
			case 1:
				String nombre;
				String telefono;

				System.out.println("Dime un nombre");
				nombre = leer.next();
				System.out.println("Dime un numero de teléfono");
				telefono = leer.next();

			}

		}

	}

}
