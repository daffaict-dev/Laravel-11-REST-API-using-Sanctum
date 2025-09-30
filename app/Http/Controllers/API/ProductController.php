<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Product;
use Validator;
use App\Http\Resources\ProductResource;
use Illuminate\Http\JsonResponse;
   
class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        $products = Product::all();
    
        return $this->sendResponse(ProductResource::collection($products), 'Products retrieved successfully.');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
              'kode_barang' => 'required', 
              'nama_komponen' => 'required',
              'gambar' => 'nullable',
              'satuan' => 'required',
              'jumlah' => 'required',
              'lokasi_simpan' => 'required',
              'stok_min' => 'required',
              'stok_max' => 'required'
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $product = Product::create($input);
   
        return $this->sendResponse(new ProductResource($product), 'Product created successfully.');
    } 
   
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id): JsonResponse
    {
        $product = Product::find($id);
  
        if (is_null($product)) {
            return $this->sendError('Product not found.');
        }
   
        return $this->sendResponse(new ProductResource($product), 'Product retrieved successfully.');
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
              'kode_barang' => 'required', 
              'nama_komponen' => 'required',
              'gambar' => 'nullable',
              'satuan' => 'required',
              'jumlah' => 'required',
              'lokasi_simpan' => 'required',
              'stok_min' => 'required',
              'stok_max' => 'required'
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $product->kode_barang = $input['kode_barang'];
        $product->nama_komponen = $input['nama_komponen'];
        $product->gambar = $input['gambar'];
        $product->satuan = $input['satuan'];
        $product->jumlah = $input['jumlah'];
        $product->lokasi_simpan = $input['lokasi_simpan'];
        $product->stok_min = $input['stok_min'];
        $product->stok_max = $input['stok_max'];
        $product->save();
   
        return $this->sendResponse(new ProductResource($product), 'Product updated successfully.');
    }
   
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product): JsonResponse
    {
        $product->delete();
   
        return $this->sendResponse([], 'Product deleted successfully.');
    }
}