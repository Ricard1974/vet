<?php

namespace App\Http\Resources;


use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // return parent::toArray($request);

        return [
            'id' => $this->id,
            'category_id' => $this->category->name,
            'title' => $this->title,
            'slug' => $this->slug,
            'content' => $this->content,
            'is_published' => $this->is_published ? 'Publicado' : 'No publicado',
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            // 'tags0' => Tag::get('name', 'slug'),           // agafa tots els tags
            // 'tags1' => Tag::all('name','slug'),            //agafa tots els tags nom y slug
            // 'tags2' => $this->tags[0]->id,                  //agafa nomes el id del tag 
            'tags3' => $this->tags,
            'tags4' => $this->tags('name','slug'),
            // 'tags5' => $this->tags->name,
            'media_image' => $this->getFirstMediaUrl('post', 'file_name'),
            'media_thumb' => $this->getFirstMediaUrl('post', 'thumb'),
        ];
    }
}
