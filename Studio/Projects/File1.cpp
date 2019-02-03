#include <iostream>

#include <iomanip>
using namespace std;

int main() {
	int k, m, d, q;
	cin>>k>>m>>d;
	q=1;
	if ((m==0 && (d==6 || d==7)) || (m==0&&k==0)) {
	 cout<<0;
	}else{
	   m+=k;
	 while (q<=m){
		switch(d){
		case 7:
			d=1;
			m-=q;
			break;
		case 6:
			m-=q;
			d++;
			break;
		default:
			d++;
			m+=k;
			m-=q;
		}
		q++;
	}
	cout<<q-1;
	}
	cin>>q;
	return 0;
}

