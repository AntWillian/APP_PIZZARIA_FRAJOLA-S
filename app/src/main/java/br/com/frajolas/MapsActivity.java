package br.com.frajolas;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class MapsActivity extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap;

    ArrayList<Ambiente> lstAmbientes = new ArrayList<Ambiente>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);



    }


    /**
     * Manipulates the map once available.
     * This callback is triggered when the map is ready to be used.
     * This is where we can add markers or lines, add listeners or move the camera. In this case,
     * we just add a marker near Sydney, Australia.
     * If Google Play services is not installed on the device, the user will be prompted to install
     * it inside the SupportMapFragment. This method will only be triggered once the user has
     * installed Google Play services and returned to the app.
     */
    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;
        conectarAmbiente();



    }

    public void conectarAmbiente(){
        // conexao com a api

        new AsyncTask<Void,Void,Void>(){



            @Override
            protected Void doInBackground(Void... voids) {

                String selectJson = Http.get("http://10.0.2.2/projeto_frajolas/cms/API/Ambiente.php");
                Log.d("TAG",selectJson);

                try {
                    JSONArray jsonArray = new JSONArray(selectJson);

                    for (int i=0;i < jsonArray.length();i++){
                        JSONObject item = jsonArray.getJSONObject(i);

                        Ambiente a= Ambiente.create(
                                item.getInt("idAmbiente"),
                                item.getDouble("longitude"),
                                item.getDouble("latitude"),
                                item.getString("cidade"),
                                item.getString("nome"),
                                item.getString("telefone"),
                                item.getString("bairro"),
                                item.getString("numero"),
                                item.getString("nomePizzaria")
                        );
                        lstAmbientes.add(a);
                    }
                } catch (JSONException e) {
                    Log.e("erro",e.getMessage());
                }
                return null;
            }

            @Override
            protected void onPostExecute(Void aVoid) {
                super.onPostExecute(aVoid);

                for (int i=0 ; i < lstAmbientes.size() ; i++) {

                    Ambiente ab = lstAmbientes.get(i);

                    float lat = (float) ab.getLatitude();
                    float lon = (float) ab.getLongitude();


                    // Add a marker in Sydney and move the camera
                    LatLng sydney = new LatLng(lat,lon );
                    mMap.addMarker(new MarkerOptions().position(sydney).title(ab.getNomePizzaia()));
                    mMap.moveCamera(CameraUpdateFactory.newLatLng(sydney));
                }
            }
        }.execute();
    }
}
